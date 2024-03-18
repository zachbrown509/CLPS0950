%%%%% CLPS0950 Project 1: Personality Quiz %%%%%

disp('Welcome to our Personality Quiz: What Coffee are You?')
disp('You will answer the following ten questions and rank yourself 1-10 based on how much you agree with the statement.')

% Initialize the total score
total_score = zeros(1,length(questions));

% Questions
questions = {
    'How adventerous are you on a scale of 1-10?';
    'Rate how much of a morning person you are on a scale of 1-10';
    'How extroverted are you? (1-10)';
    'How much do you enjoy nature? (1-10)';
    };

coffee = {
'Vanilla Iced Coffee'; 'Hot Brewed Coffee'; 'Cold Brew';
'Iced Lavender Latte'; 'Espresso Macchiato';    
};

coffee_recipes = {
'Vanilla Iced Coffee Recipe: ',
'Hot Brewed Coffee Recipe: ',
'Cold Brew Recipe: ',
'Iced Lavender Latte Recipe: ',
'Espresso Macchiato Recipe: '
};

for ii = 1:length(questions)
    total_score(ii) = input(questions{ii});
end
disp(sum(total_score)); %% delete this later

[~,coffee_index] = max(total_score);
chosen_coffee = coffee{coffee_index};
chosen_recipe = coffee_recipes{coffee_index};

disp(chosen_coffee);

