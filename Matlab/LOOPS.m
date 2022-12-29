sum=0;
N=input('Enter a positive integer number(>2)');
for k=0:N
    sum=sum+1/factorial(k);
end
disp(['sum=',num2str(sum,15)]);
disp(['exp(1)',num2str(exp(1),15)]);
diff=abs(exp(1)-sum);
disp(['diff=',num2str(diff,'%e')]);


