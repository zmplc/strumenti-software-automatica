clear;syms s tt
dt=.001;n=2;T=10;
A=[0 1;-1 0];B=[0;1];C=[1 0];D=0;
t=[0:dt:T];
x0=[0;0];x=x0;y=C*x;
%u=1*sin(t);us=sin(tt);
u=ones(1,int32(T/dt));us=heaviside(tt);
%u=exp(-t);
for i=1:T/dt
    x(:,i+1)=x(:,i)+(A*x(:,i)+B*u(i))*dt;
    y(:,i)=C*x(:,i)+D*u(i);
end
figure(1);clf;plot(t,[x(1,:);x(2,:)]);
xlabel('x1');ylabel('x2');