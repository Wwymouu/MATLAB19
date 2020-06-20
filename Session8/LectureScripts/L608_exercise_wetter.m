fid=fopen('wetter.txt');
HDR = textscan(fid,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s',1,'delimiter',',','MultipleDelimsAsOne',1);
DATA = textscan(fid,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s','delimiter',',','MultipleDelimsAsOne',1);
fclose(fid);

date=DATA{2};
humidity=DATA{5};
pressure=DATA{6};
temperature=DATA{7};

h=str2double(humidity);
time=datenum(date,'yyyymmdd');
p=str2double(pressure);
te=str2double(temperature);

histogram2(time,te)
xlabel('Time')
ylabel('Temperature')
zlabel('Occurrences')
title('temperature')

figure
histogram2(time,h)
xlabel('Time')
ylabel('humidity')
zlabel('Occurrences')
title('humidity')

figure
histogram2(time,p)
xlabel('Time')
ylabel('pressure')
zlabel('Occurrences')
title('pressure')


%c=datetime(time,'ConvertFrom','excel');



