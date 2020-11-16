function [t,D,P,R,H]=ReadIn3(file)
Data=csvread(file,2,0);
t=Data(:,1);
D=Data(:,3);
P=Data(:,4);
R=Data(:,5);
H=Data(:,6);
end
