% Calculate the duration of the first world war
% Use the date format!
begins=datenum('28.07.1914','dd.mm.yyyy') %specifying the input format
ends=datenum('11-Nov-1918') % usign the default input format
days=ends-begins

fprintf('The WWI lasted %d days.\n', days)
