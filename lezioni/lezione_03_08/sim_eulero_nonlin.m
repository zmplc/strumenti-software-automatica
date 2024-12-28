clear;
dt=.001;T=10;t=[0:dt:T];
k1=20;k2=10;M=100;p1=1;p2=1;
x0=[6;5];x=x0;
for i=1:T/dt
    x(1,i+1)=x(1,i)+(k1*x(1,i)*(1-x(1,i)/M)-p1*x(1,i)*x(2,i))*dt;
    x(2,i+1)=x(2,i)+(-k2*x(2,i)+p2*x(1,i)*x(2,i))*dt;
end;
figure(1);clf;plot(x(1,:),x(2,:))
xlabel('x1');ylabel('x2');
figure(2);clf;plot(t,[x(1,:);x(2,:)])