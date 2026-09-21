clear all; clc; close all

e  = 1e2;
ro = 2e2;
f  = 1e4;
ts = 1/f;
l  = 1e-3;
co = 4.7e-5;
d  = 0.5;

k  = 2*l/(ro*ts)
kc = d*(1 - d)^2

v = e/(1-d)
dil = d*ts*e/(2*l);
dil_pico = 2*dil

k = (2*l)/(ro*ts);
v_dcm = e*(1 + sqrt(1 + (4*d^2)/(k)))/2
d2 = d*(e)/(v_dcm - e);
d3 = 1 - d - d2;
tx = d3*ts