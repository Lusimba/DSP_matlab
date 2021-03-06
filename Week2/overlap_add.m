%how to find linear convolution using overlap add method 
%L=length of segment in which we will divide the input signal
%In 1st step L-r nos of zeros are added in x such that we will get L nos of
%data

%nr=no of rows
%Matrix M1 is generated by taking L samples from x1 for each row
% for M2 in each row M-1 zeros has been added
% h1 length has been made sama as the length of each row of M2 so that
%circular convolution of matrix M2 and h1 is possible and well get M3
%for column wise element addition M4 is generated

clc
clear all
close all
x=[1 2 3 4 5 6 7 8 9 3 5 6 7];
h=[2 2 1];
% x=input('enter x');
% h=input('enter h');
% L=input('enter L')
M=length(h)
lx=length(x)
L=5;
r=rem(lx,L);
x1=[x zeros(1,L-r)];
lx1=length(x1);
nr=length(x1)/L;
h1=[h zeros(1,L-1)];
for k=1:nr
    M1(k,:)=x1(((k-1)*L+1):k*L);
    M2(k,:)=[M1(k,:) zeros(1,M-1)];
    M3(k,:)=ifft(fft(M2(k,:)).*fft(h1));
    M4(k,:)=[zeros(1,(k-1)*L) M3(k,:) zeros(1,(nr-k)*L)];
end
y=sum(M4)
