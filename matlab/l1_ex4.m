clear all; clc; close all

f   = 25e3;
ts  = 1/f;
e   = 20;
io  = 5;
ioa = 1;
vo  = 10;
d   = vo/e;
ro  = vo/io;
roa = vo/ioa;

l_min = (roa*ts/2)*(1 - d);

dil = (e - vo)/(2*l_min)*d*ts;
dvc = 0.01*vo/2;
c = ts*dil/(8*dvc);

ro_max = 2*l_min/((1-d)*ts);

io = 0.5;
vo_calc = e/(1 + 2*l_min*io/(e*d^2*ts))