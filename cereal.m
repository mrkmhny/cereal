%
% Analyze the nutrition facts of breakfast cereals 
% to predict customer rating
%

% Grab the filename
filename = 'cereal.csv';

% Load in the data
data = csvread('cereal.csv');
% Remove header and empty rows
data =  data(2:end,:);
% Remove non numerical columns
data = data(:,[4,5,6,7,8,9,10,11,12,14,15,16]);

% Use a smaller dataset for easier workflow
% REMOVE THIS REMOVE THIS REMOVE THIS
data = data(1:8,:);

% COLUMN NAMES for reference
% name(1),mfr(2),type(3),calories(4->1),protein(5->2),
% fat(6->3),sodium(7->4),fiber(8->5),carbo(9->6),sugars(10->7),
% potass(11->8),vitamins(12->9),shelf(13),weight(14->10),cups(15->11),rating(16->12)

% Normalize all columns to have equal weight, except for rating, of course
[data(:,1:11) .* (1./data(:,10)), data(:,12)]

% Split out training and test sets
training = data(1:floor(size(data)(1)*0.8),:);
test = data(floor(size(data)(1)*0.8)+1:end, :);

% plot calories vs rating
% testplot = data(:,[1,11]);
% testplotx = testplot(:,1)
% testploty = testplot(:,11)
ratings = data(:,1)
scatter(data(:,5),data(:,12));

