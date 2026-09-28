close all; clear all; clc

vi = 36;
d = 0.4;
np_ns = 2;
n = 1/np_ns;
r = 20;
lm = 100e-6;
c = 50e-6;
f = 100e3;
ts = 1/f;

lm_min = ts*(r/(2*(d)^2))*(1-d)^2;
vo_ccm = vi*n*d/(1-d);
vo_dcm = vi*d*sqrt(r/(2*lm*f));

Ilm_ccm = vo_ccm^2/(vi*d*r);
Ilm_dcm = vo_dcm^2/(vi*d*r);
dilm = vi*d*ts/(lm);
Ilm_max_ccm = Ilm_ccm + dilm/2;
Ilm_min_ccm = Ilm_ccm - dilm/2;
Ilm_max_dcm = Ilm_dcm + dilm/2;
Ilm_min_dcm = Ilm_dcm - dilm/2;

dvo = d*ts*vo_dcm/(r*c);

r_min = 2*(n^2)*lm_min/((1-d)^2*ts);