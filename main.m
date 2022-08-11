clc;
clear;
load data
format short
X=[ones(size(lnK)) lnK lnL lnq lnp1];
Y=lnGDP;
[b,bint,r,rint,stats] = regress(Y,X);
rcoplot(r,rint)     %画出残差及置信区间
disp('回归系数为：')
disp(b)
disp(['相关系数为',num2str(stats(1)),'，F统计量观测值为',num2str(stats(2)),...
    '，p值为',num2str(stats(3)),'，误差方差的估计为',num2str(stats(4))])

