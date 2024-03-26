%%%%% CLPS0950 Project 1: Personality Quiz %%%%%

disp('Welcome to our Personality Quiz: What Coffee are You?')
disp('You will answer the following ten questions and rank yourself 1-10 based on how much you agree with the statement.')

[music, frequency] = audioread('/Users/syd/Desktop/Coffee/floatinggarden.wav'); %%assigns background music
sound(music, frequency); %%plays music 

% Questions
questions = {
    'How likely are you to hit snooze in the morning (1-10)?: ';
    'How excited are you to meet a group of new people (1-10)?: ';
    'Rate your ability to tell a good joke on a scale of 1-10: ';
    'How competitive are you in a game of uno (1-10)?: ';
    'How good is your poker face (1-10)?: ';
    'How willing are you to try new, exotic foods (1-10)?: ';
    'Rate your ability to complete an escape room by yourself (1-10): ';
    'Rate your ability to navigate your friends from point A to point B in a foreign city (1-10): ';
    'How likely are you to enjoy a roller coaster ride (1-10)?: ';
    'Rate your ability to cook a three course meal with no recipes (1-10): ';
    };

%%Initialize the total score
total_score = zeros(1,length(questions));

% Our coffee types and your personality type
coffee = {
'Vanilla Iced Coffee'; 'Hot Brewed Coffee'; 'Cold Brew';
'Espresso Macchiato'; 'Iced Lavender Latte';     
};


%Our coffee recipes
coffee_recipes = {
['Vanilla Iced Coffee Recipe: Poured chilled coffee over ice, add vanilla syrup, ' ...
'and pour cream over the top. Enjoy!'],
['Hot Brewed Coffee Recipe: Add water and coffee grounds to a sauce pan and bring' ...
' to a boil on your stove. Allow to boil for 2 minutes. Then, turn off the head ' ...
'and allow to rests for 4 minutes. Strain your coffee. Enjoy!'],
['Cold Brew Recipe: Add ground coffee beans to four cups of water in a glass ' ...
'container. Allow this to steep for 12-15 hours and then strain. Enjoy!'],
['Espresso Macchiato Recipe: Add a shot of espresso to your favorite cup, fill' ...
' the rest of the cup with steamed milk. Enjoy!'],
['Iced Lavender Latte Recipe: Add a shot of espresso to your favorite cup over ' ...
'ice, add some lavender syrup, and pour cream over the top. Enjoy!']
};



%%Our coffee images
coffee_images = {
    '/Users/syd/Desktop/Coffee/vanillaicedcoffee.jpg'; %vanilla iced coffee
    '/Users/syd/Desktop/Coffee/hotbrewedcoffee.jpg'; %hot brewed coffee
    '/Users/syd/Desktop/Coffee/coldbrew.jpg'; %cold brew
    '/Users/syd/Desktop/Coffee/espressomacchiato.jpg'; %espresso macchiato
    '/Users/syd/Desktop/Coffee/icedlavenderlatte.jpg'; %iced lavender latte
    };

coffee_scores = [20, 40, 60, 80, Inf]; %%assigns our scores to coffees

for ii = 1:length(questions)
    total_score(ii) = input(questions{ii}); %%goes through our questions, prompting input
end

for jj = 1:length(coffee) %%assigns coffee and personality based on score
    if sum(total_score) <= coffee_scores(jj)
        chosen_coffee = coffee{jj}; %%assigns coffee
        chosen_recipe = coffee_recipes{jj}; %%assigns recipe
        chosen_image = coffee_images{jj}; %%assigns display
        break;
    end
end

disp(chosen_coffee); %displays coffee (in terminal)
disp(chosen_recipe); %displays recipe (in terminal)
imshow(chosen_image); %shows image (our image)

clear sound; %stops music

