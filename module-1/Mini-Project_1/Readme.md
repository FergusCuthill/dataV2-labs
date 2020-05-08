<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Mastermind
*Fergus Cuthill*

*Data Analytics, Amsterdam, 2020/05/08*

## Content
- [Project Description](#project-description)
- [Rules](#rules)
- [Workflow](#workflow)
- [Organization](#organization)
- [Links](#links)

## Project Description
Project was to create a working version of the board game Mastermind. I chose that option as it's a game I've enjoyed playing previously and seemed like it would be fun to build. 

## Rules
In mastermind, one player (or in this case the computer) will create a hidden code. Usually this is done with coloured pins though in this implementation, integers are used instead. 
A player must then make a guess at the code. 
Once a guess is made, the computer will return a number of white and black pins.
Black pins indicate that a colour is correct and in the correct location.
White pins indicate that a colour is correct but in the wrong location. 
The player receives only the number of pins and does not know to which part of their code they refer. 
The player makes additional guesses and receives additional feedback until either the code is guessed correctly or the maximum guesses are exceeded. 

## Workflow
Created a general outline in lucidchart to define the scope and show the main stages of creating the game.  
Sequentially went through each section of the chart implementing each stage of the game and testing as I went. 
Tidied up the code at the end.
After testing the game, made some minor changes to the implementation to make the output easier to read such as clearing and redrawing the screen after each guess. 
Made sure to save checkpoints as I went along, particularly after I had a working version of the game. 

## Organization
Broke the game down into pieces in a flow chart in Lucidchart. 
Defined functions for each section of the project. 

The repository contains work done as part of the Ironhack Amsterdam Data Analytics Course. Mastermind is contained within dataV2-labs > module-1 > Mini-Project_1. Within that folder are two ipynb files: one where I did most of the work setting up the project and testing and a second that contains only the final implementation of the game. The folder also contains this readme. 

## Links
[Repository] https://github.com/FergusCuthill/dataV2-labs 

