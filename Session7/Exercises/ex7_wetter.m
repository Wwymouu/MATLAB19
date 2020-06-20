%fid=fopen('wetter.txt');
fid = fopen('/Users/wwyvette/Desktop/Matlab/Session7/LectureScripts/wetter.txt');

%reading the first line of titles
HDR = textscan(fid,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s',1,'delimiter',',','MultipleDelimsAsOne',1);
%reading all the rest of the lines 
DATA = textscan(fid,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s','delimiter',',','MultipleDelimsAsOne',1);
fclose(fid);

%saving different types of datas in different variables
date=DATA{2};
humidity=DATA{5};
pressure=DATA{6};
temperature=DATA{7};

%converting data into correct datatype
h=str2double(humidity);
time=datenum(date,'yyyymmdd');
p=str2double(pressure);
te=str2double(temperature);

%plottng histogram of temperature
histogram2(time,te)
xlabel('Time')
ylabel('Temperature')
zlabel('Occurrences')
title('temperature')

%plottng histogram of humidity
figure
histogram2(time,h)
xlabel('Time')
ylabel('humidity')
zlabel('Occurrences')
title('humidity')

%plottng histogram of pressure
figure
histogram2(time,p)
xlabel('Time')
ylabel('pressure')
zlabel('Occurrences')
title('pressure')


%c=datetime(time,'ConvertFrom','excel');



