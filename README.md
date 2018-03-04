# Predicting Deliciousness of Breakfast Cereal with Machine Learning

The goal of this project is to use gradient descent to generate a mathmatical formula that when given the nutrition facts of a cereal can accurately predict the expected consumer rating.

## Preparing the Data
### Loading and clean up
Straight forward.  Loaded in the data into a matrix

```
% Load in the data
data = csvread('cereal.csv');

% Remove header and empty row
data =  data(2:end,:);

% Shuffle all rows to ensure randomness
data = data(randperm(size(data,1)),:);

% Remove non numerical columns
data = data(:,[4,5,6,7,8,9,10,11,12,14,15,16]);
```

Some cereals have larger or smaller serving sizes than others, creating some strange outliers in the data.  By normalizing the features of all cereals to have a serving weight (2nd to last column) of 1, this is a relatively easy fix 

```
data = [data(:,1:size(data)(2)-1) .* (1./data(:,10)), data(:,12)];
```


README is WIP... to be continued...

