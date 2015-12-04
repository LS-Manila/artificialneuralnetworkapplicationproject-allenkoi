% Script for creating the Training data

% Clear screen and workspace
clc, clear all

% For Red Traffic lights
redTrain = dir('*.jpg');
for k = 1:30
    filename_red = redTrain(k).name;
    I = imread(filename_red);
    R(:,:,:,k) = I; % 1x60 matrix, each entry containing a 35x35-pixel image
end
clear I k

% Concatenating redTrain and greenTrain
trainData = [R];