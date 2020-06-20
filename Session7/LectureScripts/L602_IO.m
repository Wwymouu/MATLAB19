% Often you have data from specially formatted Text files or read / write spreadsheets .

%Easiest way, data of one type :
A=rand(4)
csvwrite('myfile.csv',A)
b=csvread('myfile.csv')
% Read ASCII-delimited file of numeric data into matrix
%Delimiter ( , ; blank ) are recognized or they are placed manually ( 2nd argument ) .

%If you want to read/write  files with different data types it is in
%general not in a row
%It opens a file and writes data as follows:

fid = fopen('myfile2.txt', 'w')
fprintf(fid, 'Date; Value\n')
fprintf(fid, '%s; %f\n',datestr(now), 1.245)
fclose(fid)

% to read from a file
fid=fopen('gas.csv');
HDR = textscan(fid,'%s %s',1,'delimiter',';');
DATA = textscan(fid,'%s %f','delimiter',';');
fclose(fid);

% textscan is a cell array back , with elements corresponding to the columns .
% gets the actual data as follows:

measval=DATA{2};
meastimes = datevec(DATA{1},'dd.mm.yyyy HH:MM');

meas_time_num=zeros(size(measval));

for k=1:size(measval,1)
    meas_time_num(k) = datenum(meastimes(k,:));
end
plot(meas_time_num, measval)
xlabel('Time')
ylabel('Aggregate consumption of gas')
title('Gas consumption')

% The paths shown for reading / writing Data are not the only ones.
% See fscanf . , Fread ,fwrite , importData , xlsread , xlswrite
% The Matlab GUI also includes a wizard for importing data and for generating
% Import scripts . ( Import Data button )

% mean , stdvar , cov represents the Mean, standard deviation and variance of data

% If the data are divided into groups, one can with grpstats to determine the sizes of each Group

data = rand(50,1)
groups = randi(3,50,1) %creates a 50 x 1 vector with elements between 1 and 3
m = grpstats(data, groups, 'mean') %does the mean for the elements from the same group 
ugrps = unique(groups) % returns the same data as in groups but with no repetitions


