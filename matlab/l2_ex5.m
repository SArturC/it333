close all; clear all; clc

vi = 3e2;
vo = 12;
dil4 = 4;
vo_rip = 1;
n21 = 0.1;
f = 20e3;
ts = 1/f;
l2 = 10e-6;

d  = vo/(vi*n21);
l4 = vo*(1 - d)*ts/dil4;
rl_max = l4*2/((1-d)*ts);
rl = 0.8*rl_max;
c  = (1-d)/(8*l4*(f^2))*100;
l1 = l2/(n21^2);
l3_max = l1*(1/d - 1)^2;
l3 = 0.8*l3_max;

il4 = vo/rl;