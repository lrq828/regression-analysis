clc;
clear;
load data
format short
X=[ones(size(lnK)) lnK lnL lnq lnp1];
Y=lnGDP;
[b,bint,r,rint,stats] = regress(Y,X);
rcoplot(r,rint)     %�����в��������
disp('�ع�ϵ��Ϊ��')
disp(b)
disp(['���ϵ��Ϊ',num2str(stats(1)),'��Fͳ�����۲�ֵΪ',num2str(stats(2)),...
    '��pֵΪ',num2str(stats(3)),'������Ĺ���Ϊ',num2str(stats(4))])

