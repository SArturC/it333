close all; clear all; clc

e = 48;
vo = 36;
ro = 9;
f = 64e3;
ts = 1/f;
l1 = 10e-3;
l2 = 1e-3;
c1 = 100e-6;

% condições iniciais para a simulação
d  = vo/(vo + e);
v1 = e/(1-d);
v2 = e*d/(1-d);
i1 = ((d/(1-d))^2)*(e/ro);
i2 = -(d/(1-d))*(e/ro);

% item a
io_min = e*ts/(8*l2);
io = vo/ro;

% item c
dil2 = e*d*ts/(2*l2);
dvco = 0.5;
co   = dil2*ts/(4*dvco);

% item d
dio = dvco/ro;