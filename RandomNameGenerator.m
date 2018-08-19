function [] = RandomNameGenerator(word1, word2, word3, list)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Project Random Name Generator 
%
% Program Description 
% This program generates a list of random names (not necessarily existent
% words) based on three words initialized by the user, and also the number
% of random words the user wants. Names will have between 4 and 7 letters.
%
% Function Call
% function [] = RandomNameGenerator(word1, word2, word3, list)
%
% Input Arguments
% word1: first word initialized by the user; *must be written inside
% single quotes and all letters must be lowercase*
% word2: second word initialized by the user; *must be written inside
% single quotes and all letters must be lowercase*
% word3: third word initialized by the user; *must be written inside
% single quotes and all letters must be lowercase*
% list: number of names the user wants the program to generate
%
% Output Arguments
% N/A
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% Initializes random variable
random = 0;
% Initializes count_out variable as the number given by the user
count_out = list;

% Generates a list of names
while count_out > 0
    
    k = 0;
    random = 0;
    letter = 0;
    
    % Chooses length of word randomly
    while random <= 3 | random > 7
        
        random = 10*rand;
        
    end
    
    count = round(random);
    elem = count;
    
    while count > 0
        
        % Chooses one random letter from the first word
        index = round((length(word1) - 1).*rand(1,1)) + 1;
        letter(count) = word1(index); 
        count = count - 1;
        
        if count > 0
            
            % Chooses one random letter from the second word
            index = round((length(word2) - 1).*rand(1,1)) + 1;
            letter(count) = word2(index);
            count = count - 1;
            
        end
        
        if count > 0
            
            % Chooses one random letter from the third word
            index = round((length(word3) - 1).*rand(1,1)) + 1;
            letter(count) = word3(index);
            count = count - 1;
            
        end
        
    end
    
    n = 1;
    
    % Disregards words with repetitive letters in sequence
    while n < elem
        
          if (letter(n) == letter(n+1))
              
              k = 1;
              
          end
          
          n = n + 1;
          
    end
    
    letter(1) = letter(1) - 32; % Sets first letter to capital letter
    
    if k ~= 1
        
        fprintf('Name is: %s\n',letter) % Prints name
    
    else
        
        count_out = count_out + 1; % Compensates for disregarded words
        
    end
    
    count_out = count_out - 1; % Updates variable count_out
    
end