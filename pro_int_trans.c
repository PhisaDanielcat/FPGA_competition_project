#include <ap_cint.h>
#include <math.h>

void pro_int_trans(uint32* c_int,int32 x_int,uint32 y1_int,uint32 y2_int,uint32 k_int,uint32 l_int,
		uint32 m_int,uint32 p_int,uint32 q_int,uint32 r_int,uint32 s_int,uint32 u_int,uint32 v_int,uint32 w_int){

	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE s_axilite port=c_int
	#pragma HLS INTERFACE s_axilite port=x_int
	#pragma HLS INTERFACE s_axilite port=y1_int
	#pragma HLS INTERFACE s_axilite port=y2_int
	#pragma HLS INTERFACE s_axilite port=k_int
	#pragma HLS INTERFACE s_axilite port=l_int
	#pragma HLS INTERFACE s_axilite port=m_int
	#pragma HLS INTERFACE s_axilite port=p_int
	#pragma HLS INTERFACE s_axilite port=q_int
	#pragma HLS INTERFACE s_axilite port=r_int
	#pragma HLS INTERFACE s_axilite port=s_int
	#pragma HLS INTERFACE s_axilite port=u_int
	#pragma HLS INTERFACE s_axilite port=v_int
	#pragma HLS INTERFACE s_axilite port=w_int

	union UFloat
	{
		float float_part;
		uint32 int_part;
	};
	union UFloat x;
	union UFloat y1;
	union UFloat y2;
	union UFloat c;
	union UFloat k;
	union UFloat l;
	union UFloat m;
	union UFloat p;
	union UFloat q;
	union UFloat r;
	union UFloat s;
	union UFloat u;
	union UFloat v;
	union UFloat w;


	float x_float;
	float y1_float;
	float y2_float;
	float c_float;
	float k_float;
	float l_float;
	float m_float;
	float p_float;
	float q_float;
	float r_float;
	float s_float;
	float u_float;
	float v_float;
	float w_float;


	x.int_part=x_int;
	y1.int_part=y1_int;
	y2.int_part=y2_int;
	k.int_part=k_int;
	l.int_part=l_int;
	m.int_part=m_int;
	p.int_part=p_int;
	q.int_part=q_int;
	r.int_part=r_int;
	s.int_part=s_int;
	u.int_part=u_int;
	v.int_part=v_int;
	w.int_part=w_int;


	x_float=x.float_part;
	y1_float=y1.float_part;
	y2_float=y2.float_part;
	k_float=k.float_part;
	l_float=l.float_part;
	m_float=m.float_part;
	p_float=p.float_part;
	q_float=q.float_part;
	r_float=r.float_part;
	s_float=s.float_part;
	u_float=u.float_part;
	v_float=v.float_part;
	w_float=w.float_part;

	float add1_float;
	float add2_float;
	float exp_float;
	float kx_float;
	float ly_float;
	float my_float;
	float pxy_float;
	float qxy_float;
	float rxyy_float;


	kx_float=k_float*x_float;
	ly_float=l_float*y1_float;
	my_float=m_float*y2_float;
	pxy_float=p_float*x_float*y1_float;

	qxy_float=q_float*x_float*y2_float;
	rxyy_float=r_float*x_float*y1_float*y2_float;


	add1_float=kx_float+ly_float+my_float+pxy_float;
	add2_float=qxy_float+rxyy_float+s_float;
	exp_float=exp(u_float*x_float+v_float*y1_float+w_float*y2_float);

	c_float=(add1_float+add2_float)*exp_float;

	c.float_part=c_float;
	*c_int=c.int_part;
}
