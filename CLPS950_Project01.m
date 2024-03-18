%%%%% CLPS0950 Project 1: Personality Quiz %%%%%

disp('Welcome to our Personality Quiz: What Coffee are You?')
disp('You will answer the following ten questions and rank yourself 1-10 based on how much you agree with the statement.')

% Initialize the total score
total_score = 0;

% Questions
questions = {
    'How adventerous are you on a scale of 1-10?';
    'Rate how much of a morning person you are on a scale of 1-10';
    'How extroverted are you? (1-10)';
    'How much do you enjoy nature? (1-10)';
    };
for ii = 1:length(questions)
    disp(questions{ii})
end

%% hi!

