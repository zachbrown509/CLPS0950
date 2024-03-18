%%%%% CLPS0950 Project 1: Personality Quiz %%%%%

disp('Welcome to our Personality Quiz: What Coffee are You?')
disp('You will answer the following ten questions and rank yourself 1-10 based on how much you agree with the statement.')

% Initialize the total score
total_score = zeros(1,length(questions));

% Questions
questions = {
    'How adventerous are you on a scale of 1-10?: ';
    'How much of a morning person are you on a scale of 1-10?: ';
    'How extroverted are you on a scale of 1-10?: ';
    'How much do you enjoy nature on a scale of 1-10?: ';
    };

coffee = {
'Vanilla Iced Coffee'; 'Hot Brewed Coffee'; 'Cold Brew';
'Iced Lavender Latte'; 'Espresso Macchiato';    
};

coffee_recipes = {
['Vanilla Iced Coffee Recipe: Poured chilled coffee over ice, add vanilla syrup, ' ...
'and pour cream over the top. Enjoy!'],
['Hot Brewed Coffee Recipe: Add water and coffee grounds to a sauce pan and bring' ...
' to a boil on your stove. Allow to boil for 2 minutes. Then, turn off the head ' ...
'and allow to rests for 4 minutes. Strain your coffee. Enjoy!'],
['Cold Brew Recipe: Add ground coffee beans to four cups of water in a glass ' ...
'container. Allow this to steep for 12-15 hours and then strain. Enjoy!'],
['Iced Lavender Latte Recipe: Add a shot of espresso to your favorite cup over ' ...
'ice, add some lavender syrup, and pour cream over the top. Enjoy!'],
['Espresso Macchiato Recipe: Add a shot of espresso to your favorite cup, fill' ...
' the rest of the cup with steamed milk. Enjoy!']
};

coffee_scores = [5, 10, 15, 20, Inf];

for ii = 1:length(questions)
    total_score(ii) = input(questions{ii});
end


for jj = 1:length(coffee)
    if sum(total_score) <= coffee_scores(jj)
        chosen_coffee = coffee{jj};
        chosen_recipe = coffee_recipes{jj};
        break;
    end
end

disp(chosen_coffee);
disp(chosen_recipe);

