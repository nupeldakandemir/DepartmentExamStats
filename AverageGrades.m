% AverageGrades.m

function ScoreAvg = AverageGrades(dataset, DepartName)
    % Find students in the specified department
    indices = strcmp(dataset.Department, DepartName);
    
    % Calculate average final exam score if there are students in the department
    if any(indices)
        ScoreAvg = mean(dataset.Final_Exam_Score(indices));
    else
        ScoreAvg = NaN; % NaN if no students found in the department
    end
end
