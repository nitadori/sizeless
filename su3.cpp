#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <complex>
#include <arm_sve.h>

__sizeless_struct SVGauge{
	typedef svfloat32_t vec;
	svfloat32_t r11, i11, r12, i12, r13, i13;
	svfloat32_t r21, i21, r22, i22, r23, i23;
	svfloat32_t r31, i31, r32, i32, r33, i33;

	static svbool_t svptrue(svfloat32_t){
		return svptrue_b32();
	}
	static svbool_t svptrue(svfloat64_t){
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

		rsum = svadd_x(pg, rsum, r11);
		isum = svadd_x(pg, isum, i11);
		rsum = svadd_x(pg, rsum, r12);
		isum = svadd_x(pg, isum, i12);
		rsum = svadd_x(pg, rsum, r13);
		isum = svadd_x(pg, isum, i13);

		rsum = svadd_x(pg, rsum, r21);
		isum = svadd_x(pg, isum, i21);
		rsum = svadd_x(pg, rsum, r22);
		isum = svadd_x(pg, isum, i22);
		rsum = svadd_x(pg, rsum, r23);
		isum = svadd_x(pg, isum, i23);

		rsum = svadd_x(pg, rsum, r31);
		isum = svadd_x(pg, isum, i31);
		rsum = svadd_x(pg, rsum, r32);
		isum = svadd_x(pg, isum, i32);
		rsum = svadd_x(pg, rsum, r33);
		isum = svadd_x(pg, isum, i33);

		svst1_vnum(pg, dst, 0, rsum);
		svst1_vnum(pg, dst, 1, isum);
	}

	void mult(const float *vin, float *vout){
		svbool_t pg = svptrue(r11);

		vec v1r, v1i, v2r, v2i, v3r, v3i;
		vec tmpr, tmpi;

		// 1st column
		tmpr = svld1_vnum(pg, vin, 0);
		tmpi = svld1_vnum(pg, vin, 1);

		v1r = svmul_x(pg,      r11, tmpr);
		v1r = svmls_x(pg, v1r, i11, tmpi);
		v1i = svmul_x(pg,      r11, tmpi);
		v1i = svmla_x(pg, v1i, i11, tmpr);

		v2r = svmul_x(pg,      r21, tmpr);
		v2r = svmls_x(pg, v2r, i21, tmpi);
		v2i = svmul_x(pg,      r21, tmpi);
		v2i = svmla_x(pg, v2i, i21, tmpr);

		v3r = svmul_x(pg,      r31, tmpr);
		v3r = svmls_x(pg, v3r, i31, tmpi);
		v3i = svmul_x(pg,      r31, tmpi);
		v3i = svmla_x(pg, v3i, i31, tmpr);

		// 2nd column
		tmpr = svld1_vnum(pg, vin, 2);
		tmpi = svld1_vnum(pg, vin, 3);

		v1r = svmla_x(pg, v1r, r12, tmpr);
		v1r = svmls_x(pg, v1r, i12, tmpi);
		v1i = svmla_x(pg, v1i, r12, tmpi);
		v1i = svmla_x(pg, v1i, i12, tmpr);

		v2r = svmla_x(pg, v2r, r22, tmpr);
		v2r = svmls_x(pg, v2r, i22, tmpi);
		v2i = svmla_x(pg, v2i, r22, tmpi);
		v2i = svmla_x(pg, v2i, i22, tmpr);

		v3r = svmla_x(pg, v3r, r32, tmpr);
		v3r = svmls_x(pg, v3r, i32, tmpi);
		v3i = svmla_x(pg, v3i, r32, tmpi);
		v3i = svmla_x(pg, v3i, i32, tmpr);

		// 3rd column
		tmpr = svld1_vnum(pg, vin, 4);
		tmpi = svld1_vnum(pg, vin, 5);

		v1r = svmla_x(pg, v1r, r13, tmpr);
		v1r = svmls_x(pg, v1r, i13, tmpi);
		v1i = svmla_x(pg, v1i, r13, tmpi);
		v1i = svmla_x(pg, v1i, i13, tmpr);

		v2r = svmla_x(pg, v2r, r23, tmpr);
		v2r = svmls_x(pg, v2r, i23, tmpi);
		v2i = svmla_x(pg, v2i, r23, tmpi);
		v2i = svmla_x(pg, v2i, i23, tmpr);

		v3r = svmla_x(pg, v3r, r33, tmpr);
		v3r = svmls_x(pg, v3r, i33, tmpi);
		v3i = svmla_x(pg, v3i, r33, tmpi);
		v3i = svmla_x(pg, v3i, i33, tmpr);

		svst1_vnum(pg, vout, 0, v1r);
		svst1_vnum(pg, vout, 1, v1i);
		svst1_vnum(pg, vout, 2, v2r);
		svst1_vnum(pg, vout, 3, v2i);
		svst1_vnum(pg, vout, 4, v3r);
		svst1_vnum(pg, vout, 5, v3i);
	}
	void mult(const float *vin, float *vout, const int ns){
		const auto vlen = svlen(r11);
		for(int i=0; i<ns; i++){
			mult(vin, vout);
			vin  += 6 * vlen;
			vout += 6 * vlen;
		}
	}

	void mdag(const float *vin, float *vout){
		svbool_t pg = svptrue(r11);

		vec v1r, v1i, v2r, v2i, v3r, v3i;
		vec tmpr, tmpi;

		// 1st row
		tmpr = svld1_vnum(pg, vin, 0);
		tmpi = svld1_vnum(pg, vin, 1);

		v1r = svmul_x(pg,      r11, tmpr);
		v1r = svmla_x(pg, v1r, i11, tmpi);
		v1i = svmul_x(pg,      r11, tmpi);
		v1i = svmls_x(pg, v1i, i11, tmpr);

		v2r = svmul_x(pg,      r12, tmpr);
		v2r = svmla_x(pg, v2r, i12, tmpi);
		v2i = svmul_x(pg,      r12, tmpi);
		v2i = svmls_x(pg, v2i, i12, tmpr);

		v3r = svmul_x(pg,      r13, tmpr);
		v3r = svmla_x(pg, v3r, i13, tmpi);
		v3i = svmul_x(pg,      r13, tmpi);
		v3i = svmls_x(pg, v3i, i13, tmpr);

		// 2nd row
		tmpr = svld1_vnum(pg, vin, 2);
		tmpi = svld1_vnum(pg, vin, 3);

		v1r = svmla_x(pg, v1r, r21, tmpr);
		v1r = svmla_x(pg, v1r, i21, tmpi);
		v1i = svmla_x(pg, v1i, r21, tmpi);
		v1i = svmls_x(pg, v1i, i21, tmpr);

		v2r = svmla_x(pg, v2r, r22, tmpr);
		v2r = svmla_x(pg, v2r, i22, tmpi);
		v2i = svmla_x(pg, v2i, r22, tmpi);
		v2i = svmls_x(pg, v2i, i22, tmpr);

		v3r = svmla_x(pg, v3r, r23, tmpr);
		v3r = svmla_x(pg, v3r, i23, tmpi);
		v3i = svmla_x(pg, v3i, r23, tmpi);
		v3i = svmls_x(pg, v3i, i23, tmpr);

		// 3rd row
		tmpr = svld1_vnum(pg, vin, 4);
		tmpi = svld1_vnum(pg, vin, 5);

		v1r = svmla_x(pg, v1r, r31, tmpr);
		v1r = svmla_x(pg, v1r, i31, tmpi);
		v1i = svmla_x(pg, v1i, r31, tmpi);
		v1i = svmls_x(pg, v1i, i31, tmpr);

		v2r = svmla_x(pg, v2r, r32, tmpr);
		v2r = svmla_x(pg, v2r, i32, tmpi);
		v2i = svmla_x(pg, v2i, r32, tmpi);
		v2i = svmls_x(pg, v2i, i32, tmpr);

		v3r = svmla_x(pg, v3r, r33, tmpr);
		v3r = svmla_x(pg, v3r, i33, tmpi);
		v3i = svmla_x(pg, v3i, r33, tmpi);
		v3i = svmls_x(pg, v3i, i33, tmpr);

		svst1_vnum(pg, vout, 0, v1r);
		svst1_vnum(pg, vout, 1, v1i);
		svst1_vnum(pg, vout, 2, v2r);
		svst1_vnum(pg, vout, 3, v2i);
		svst1_vnum(pg, vout, 4, v3r);
		svst1_vnum(pg, vout, 5, v3i);
	}
	void mdag(const float *vin, float *vout, const int ns){
		const auto vlen = svlen(r11);
		for(int i=0; i<ns; i++){
			mdag(vin, vout);
			vin  += 6 * vlen;
			vout += 6 * vlen;
		}
	}
};

void unpack_cplx(float *dst, const std::complex<float> *src, const int nvec){
	svfloat32_t tmp;
	auto  vlen = svlen(tmp);
	svbool_t pg = SVGauge::svptrue(tmp);
	for(int i=0; i<nvec; i++){
		auto v2 = svld2(pg, (const float *)(src) + 2*i*vlen);
		auto re = svget2(v2, 0);
		auto im = svget2(v2, 1);

		svst1_vnum(pg, dst + vlen*2*i, 0, re); 
		svst1_vnum(pg, dst + vlen*2*i, 1, im); 
	}
}

void pack_cplx(std::complex<float> *dst, const float *src, const int nvec){
	svfloat32_t tmp;
	auto  vlen = svlen(tmp);
	svbool_t pg = SVGauge::svptrue(tmp);
	for(int i=0; i<nvec; i++){
		auto re = svld1_vnum(pg, src + vlen*2*i, 0); 
		auto im = svld1_vnum(pg, src + vlen*2*i, 1); 
		auto v2 = svcreate2(re, im);

		svst2(pg, (float *)dst + 2*i*vlen, v2);
	}
}

// extern float *ext;

int main(int ac, char **av){
	int ns = ac>1 ? atoi(av[1]) : 4;

#if 0
	float buf [18*16];
	float spin[6*16 * ns];

	for(auto &f : buf ) f = drand48();
	for(auto &f : spin) f = drand48();

	SVGauge g;
	g.load(buf);
	// g.chksum(ext);
	g.mult(spin, ext, ns);
#else
	svfloat32_t tmp;
	size_t vlen = svlen(tmp);
	std::complex<float> gauge[3][3][vlen];
	std::complex<float> spin[ns][3][vlen];
	decltype(spin) prod, prod2;

	srand48(334);
	{
		float *p = (float *)gauge;
		int len = sizeof(gauge)/sizeof(float);
		for(int i=0; i<len; i++) p[i] = drand48();
	}
	{
		float *p = (float *)spin;
		int len = sizeof(spin)/sizeof(float);
		for(int i=0; i<len; i++) p[i] = drand48();
	}

	for(int v=0; v<vlen; v++){
		for(int s=0; s<ns; s++){
			for(int i=0; i<3; i++){
				std::complex<float> sum(0.0f, 0.0f);
				for(int j=0; j<3; j++){
					sum += gauge[i][j][v] * spin[s][j][v];
				}
				prod[s][i][v] = sum;
			}
		}
	}

	SVGauge g;
	float svgauge[3*3*vlen*2];
	float svspin[ns*3*vlen*2];
	decltype(svspin)svprod;

	unpack_cplx(svgauge, gauge[0][0], 3*3);
	unpack_cplx(svspin, spin[0][0], ns*3);
	g.load(svgauge);
	g.mult(svspin, svprod, ns);
	pack_cplx(prod2[0][0], svprod, ns*3);

	{
		float *p1 = (float *)prod;
		float *p2 = (float *)prod2;
		int len = sizeof(spin)/sizeof(float);
		int cnt=0;
		for(int i=0; i<len; i++){
			float diff = p2[i] - p1[i];
			if(fabsf(diff) > 1.e-6){
				printf("%d : %e\n", i, diff);
				if(++cnt >= 100){
					break;
				}
			}
		}
		if(!cnt) puts("PASS mult");
	}

	// Dagger
	for(int v=0; v<vlen; v++){
		for(int s=0; s<ns; s++){
			for(int i=0; i<3; i++){
				std::complex<float> sum(0.0f, 0.0f);
				for(int j=0; j<3; j++){
					sum += conj(gauge[j][i][v]) * spin[s][j][v];
				}
				prod[s][i][v] = sum;
			}
		}
	}

	// unpack_cplx(svgauge, gauge[0][0], 3*3);
	// unpack_cplx(svspin, spin[0][0], ns*3);
	// g.load(svgauge);
	g.mdag(svspin, svprod, ns);
	pack_cplx(prod2[0][0], svprod, ns*3);

	{
		float *p1 = (float *)prod;
		float *p2 = (float *)prod2;
		int len = sizeof(spin)/sizeof(float);
		int cnt=0;
		for(int i=0; i<len; i++){
			float diff = p2[i] - p1[i];
			if(fabsf(diff) > 1.e-6){
				printf("%d : %e\n", i, diff);
				if(++cnt >= 192){
					break;
				}
			}
		}
		if(!cnt) puts("PASS mdag");
	}
#endif
}
