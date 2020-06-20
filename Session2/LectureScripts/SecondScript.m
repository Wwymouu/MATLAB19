%{
    This script is a demonstration of a good practice when coding,
    which is fully commented.
    Input: No input
    Output: Variables a and b will be saved in the workspace
                a: integer, the square root of five 
                b: integer, the golden ratio
%}

% Clearing the space
clear all; close all; clc


%% Initialisation

% Computing the required quantities
a = sqrt(5);             % Assigning to a the computed value of sqrt(5)
c = 2;                     % Storing the denominator for the purpose of the example

%% Actual computation 

% Creating the golden number 
b = (1+a)/c