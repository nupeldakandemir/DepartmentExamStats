% main.m

clear all;
clc;

% Create dataset for 10,000 students
StudentNum = 10000;
Departments = {'Computer Engineering', 'Mechanical Engineering', ...
               'Electrical Engineering', 'Civil Engineering', ...
               'Chemical Engineering'};
DepartNum = numel(Departments);

% Initialize dataset
dataset = table('Size', [StudentNum, 4], ...
    'VariableTypes', {'double', 'cell', 'double', 'double'}, ...
    'VariableNames', {'Student_ID', 'Department', 'Midterm_Score', 'Final_Exam_Score'});

for i = 1:StudentNum
    % Assign student ID
    dataset.Student_ID(i) = i;
    
    % Assign random department
    RanDept_index = randi(DepartNum);
    dataset.Department(i) = Departments(RanDept_index);
    
    % Generate random midterm and final exam scores between 0 and 100
    dataset.Midterm_Score(i) = randi([0, 100]);
    dataset.Final_Exam_Score(i) = randi([0, 100]);
end

% Calculate and display average final exam score for a specific department (e.g., Civil Engineering)
DepartName = 'Civil Engineering';
ScoreAvg = AverageGrades(dataset, DepartName);

% Display result
if isnan(ScoreAvg)
    disp('No students found in this department');
else
    fprintf('Average final exam score for %s: %.2f\n', DepartName, ScoreAvg);
end
