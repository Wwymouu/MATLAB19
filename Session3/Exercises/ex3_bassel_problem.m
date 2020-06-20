%computes the Bassel problem 
%starting with it=12000 the value is pi^2/6
clc
clear all

exact_value=pi^2/6;

%%
n=12000;
y=0;
for k=1:n
    y=y+1/k^2;
end

fprintf("approximated value = %d\n",y)
fprintf("exact value = %d\n",exact_value)
fprintf("error = %d\n\n",(exact_value-y)/exact_value)


%%

tol=10^(-4);
n=0;
y=0;
while (exact_value-y)/(exact_value)>tol % exit while loop when the approx. error is <tol
    n=n+1;
    y=(1/(n^2))+y;
  end

fprintf("approximated value = %d\n",y)
fprintf("exact value = %d\n",exact_value)
fprintf("error = %d\n\n",(exact_value-y)/exact_value)

%%

n=12000;

y= sum(1./(1:n).^2);

fprintf("approximated value = %d\n",y)
fprintf("exact value = %d\n",exact_value)
fprintf("error = %d\n",(exact_value-y)/exact_value)


