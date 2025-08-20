function [airQual,currentData] = predictAirQual(data)
% PREDICTAIRQUAL Predict air quality, based on machine learning model
%

% Copyright 2018-2020 The MathWorks, Inc.

% The following is only for deployment, so the compiler will recognize the model 
%#function CompactClassificationEnsemble

% Convert data types to MATLAB types 
currentData = prepData(data);

% Load model
% mdl = load("airQualModel.mat");
% model = mdl.model;

% Load model and persist for future function calls 

persistent model;

if isempty(model)
    mdl = load("airQualModel.mat");
    model = mdl.model;
end

% Determine air quality
airQual = predict(model,currentData);

% Convert data type for use in Python
airQual = char(airQual);

end

