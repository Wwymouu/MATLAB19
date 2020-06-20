
% Runtime measurement

A=rand(2000);
tic; 
svd(A); 
toc
% tic starts a timer, toc returns the time expired since then.
% You can start multiple timers

T1=tic;
% wait
T2=tic;
elapsed1=toc(T1)
elapsed2=toc(T2)