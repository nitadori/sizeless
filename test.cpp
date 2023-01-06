#include <cstdio>
#include <arm_sve.h>

#ifdef __CLANG_FUJITSU
#  define HAS_SIZELESS_STRUCT
#endif

#ifdef HAS_SIZELESS_STRUCT
#  define SVstruct __sizeless_struct
#  define SVattr 
#else
#  define SVstruct struct
#  define SVattr __attribute__((arm_sve_vector_bits(__ARM_FEATURE_SVE_BITS)))
#endif

SVstruct svcplx_f32_2v{
	typedef svfloat32_t vfloat32 SVattr;
	vfloat32 re, im;

	void load(const float *rp, const float *ip){
		svbool_t pg = svptrue_b32();
		re = svld1_f32(pg, rp);
		im = svld1_f32(pg, ip);
	}
	void load(const float *cp){
		svbool_t pg = svptrue_b32();
		svfloat32x2_t c = svld2_f32(pg, cp);
		re = svget2_f32(c, 0);
		im = svget2_f32(c, 1);
	}

	void store(float *rp, float *ip) const {
		svbool_t pg = svptrue_b32();
		svst1_f32(pg, rp, re);
		svst1_f32(pg, ip, im);
	}

	void store(float *cp) const {
		svbool_t pg = svptrue_b32();
		svfloat32x2_t c = svcreate2_f32(re, im);
		svst2_f32(pg, cp, c);
	}
};

SVstruct svcplx_f32_1v{
	typedef svfloat32_t vfloat32 SVattr;
	vfloat32 ri;

	void load(const float *rp, const float *ip){
		int vlen = svlen(ri);
		svbool_t pg = svwhilelt_b32(0, vlen/2);

		svfloat32_t re = svld1_f32(pg, rp);
		svfloat32_t im = svld1_f32(pg, ip);

		ri = svzip1_f32(re, im);
	}
	void load(const float *cp){
		svbool_t pg = svptrue_b32();
		ri = svld1_f32(pg, cp);
	}

	void store(float *rp, float *ip) const {
		int vlen = svlen(ri);
		svbool_t pg = svwhilelt_b32(0, vlen/2);

		svfloat32_t re = svuzp1_f32(ri, ri);
		svfloat32_t im = svuzp2_f32(ri, ri);

		svst1_f32(pg, rp, re);
		svst1_f32(pg, ip, im);
	}

	void store(float *cp) const {
		svbool_t pg = svptrue_b32();
		svst1_f32(pg, cp, ri);
	}
};

int main(){
	float a[16][16];

	for(int i=0; i<32; i++){
		// a[0][i] = i+1;
		*(a[0]+i) = i+1;
	}

	svcplx_f32_2v vec;
	vec.load (a[0], a[1]);
	vec.store(a[2]);
	vec.load (a[2]);
	vec.store(a[4], a[5]);

	svcplx_f32_1v v;
	v.load (a[4], a[5]);
	v.store(a[6]);
	v.load (a[6]);
	v.store(a[7], a[7]+8);

	for(int j=0; j<8; j++){
		for(int i=0; i<16; i++){
			printf("%6.1f", a[j][i]);
		}
		printf("\n");
	}

	return 0;
}
