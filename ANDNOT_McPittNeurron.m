clear;
clc;
disp('Enter the weights');
w1=input('Weight w1=');
w2=input('Weight w2=');
disp('Enter the threshold value');
theta=input('Theta=');
y=[0 0 0 0];
x1=[0 0 1 1];
x2=[0 1 0 1];
z=[0 0 1 0];
con=1;
 
while(con)
zin=(w1*x1)+(w2*x2);
for i=1:4
if zin(i)>=theta
y(i)=1;
else
y(i)=0;
end
end
disp('Output of Net');
disp(y);
if y==z
con=0;
else
disp('The Net is not learning. Enter another set of weights and threshold');
w1=input('Weight w1=');
w2=input('Weight w2=');
thetha=input('Theta=');
end
end
disp('McCulloch-Pitts Net for ANDNOT function');
disp('Weights of the neuron');
disp(w1);
disp(w2);
disp('Threshold Value');
disp(theta);
