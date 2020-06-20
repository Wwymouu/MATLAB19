% Data / times are displayed in Matlab as doubles. 
% the Number of days gone since January 0 0th
format long g
now % Current date and time as serial date number
t = datetime('now')

today

now-today

date

%converting in years/months/days/hours/minutes/sec in a vector
datevec(now)
datestr(now) %converts the datetime values in datetime array t to date strings
datestr(today)
datestr(0)
datenum('2-Mar-1973')
datenum('2.3.1973 09:47','dd.mm.yyyy HH:MM')
%converts the datetime values in datetime array t to serial date numbers.