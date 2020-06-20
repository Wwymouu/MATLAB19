clc 
clear all
%%
disp('Here we test continue')
for k=1:10
	disp(k);
    continue;
    a=1/0; % not executed
end


%%
disp('Here we test break')
for k=1:10
	disp(k);
    break;
    a=1/0; % not executed
end

disp(k);