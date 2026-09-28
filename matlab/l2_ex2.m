close all; clear all; clc

vi = 125;
vo = 50;
d = 0.3;
r = 25;
f = 250e3;
ts = 1/f;

n = vo/(d*vi);
n1_n2 = 1/n;

l = (1-d)*ts*r/(2*0.6);

c = (1-d)/(8*l*(f^2)*(0.5/100))