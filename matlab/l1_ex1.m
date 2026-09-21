clear all; clc; close all

v  = 5;
i  = 2;
r  = v/i;
f  = 2e5;
ts = 1/f;
vg = 15;
d  = v/vg;

l = (1-d)*r*ts/2;

dil = (vg - v)/(2*l)*d*ts;
dvc = 0.5;

c = ts*dil/(8*dvc);