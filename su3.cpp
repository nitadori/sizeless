#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <arm_sve.h>

__sizeless_struct Gauge{
	svfloat32_t r11, i11, r12, i12, r13, i13;
	svfloat32_t r21, i21, r22, i22, r23, i23;
	svfloat32_t r31, i31, r32, i32, r33, i33;

	svbool_t svptrue(svfloat32_t){
		return svptrue_b32();
	}
	svbool_t svptrue(svfloat64_t){
		return svptrue_b64();
	}

	void load(const float *p){
		const auto vlen = svlen(r11);
		svbool_t pg = svptrue(r11);

		r11 = svld1_vnum(pg, p, 0);
		i11 = svld1_vnum(pg, p, 1);
		r12 = svld1_vnum(pg, p, 2);
		i12 = svld1_vnum(pg, p, 3);
		r13 = svld1_vnum(pg, p, 4);
		i13 = svld1_vnum(pg, p, 5);

		p += 6*vlen;

		r21 = svld1_vnum(pg, p, 0);
		i21 = svld1_vnum(pg, p, 1);
		r22 = svld1_vnum(pg, p, 2);
		i22 = svld1_vnum(pg, p, 3);
		r23 = svld1_vnum(pg, p, 4);
		i23 = svld1_vnum(pg, p, 5);

		p += 6*vlen;

		r31 = svld1_vnum(pg, p, 0);
		i31 = svld1_vnum(pg, p, 1);
		r32 = svld1_vnum(pg, p, 2);
		i32 = svld1_vnum(pg, p, 3);
		r33 = svld1_vnum(pg, p, 4);
		i33 = svld1_vnum(pg, p, 5);
	}

	// to check asm output
	void chksum(float *dst){
		svfloat32_t rsum = svdup_f32(0.0f);
		svfloat32_t isum = svdup_f32(0.0f);
		svbool_t pg = svptrue(r11);

		rsum = svadd_z(pg, rsum, r11);
		isum = svadd_z(pg, isum, i11);
		rsum = svadd_z(pg, rsum, r12);
		isum = svadd_z(pg, isum, i12);
		rsum = svadd_z(pg, rsum, r13);
		isum = svadd_z(pg, isum, i13);

		rsum = svadd_z(pg, rsum, r21);
		isum = svadd_z(pg, isum, i21);
		rsum = svadd_z(pg, rsum, r22);
		isum = svadd_z(pg, isum, i22);
		rsum = svadd_z(pg, rsum, r23);
		isum = svadd_z(pg, isum, i23);

		rsum = svadd_z(pg, rsum, r31);
		isum = svadd_z(pg, isum, i31);
		rsum = svadd_z(pg, rsum, r32);
		isum = svadd_z(pg, isum, i32);
		rsum = svadd_z(pg, rsum, r33);
		isum = svadd_z(pg, isum, i33);

		svst1_vnum(pg, dst, 0, rsum);
		svst1_vnum(pg, dst, 1, isum);
	}
};

extern float *ext;

int main(){
	float buf[18*16];

	for(auto &f : buf) f = drand48();

	Gauge g;
	g.load(buf);
	g.chksum(ext);
}
