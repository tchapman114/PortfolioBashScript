#write a fun portfolio bash script!

#!/bin/bash

#varibles
name='Tara Chapman'
school='Oakland University'
company='365 Retail Markets'
languages='Java Python C++ HTML CSS JavaScript Typescript SQL'
str1='y'
email='tchapman1140@gmail.com'
linkedin='linkedin.com/in/tarachapman01/'
git='https://github.com/tchapman114'
tools='Jira, Confluence, Github, Sumologic'
ide="IntelliJ, VS code, Netbeans, Eclipse, IDLE"
grad_date='May 2023'

echo "Hello Everyone, Welcome to my portfolio bash script!"
#Asking for user input
echo "How many facts would you like to know about $name? (Enter 1-10): "
read num_of_facts

#creating an array
declare -a array=("My name is $name and I am a computer science student at $school." 
                  "I am on track to graduate $grad_date."
                  "Currently, I am a software developer intern at $company located in Troy."
                  "I have gained the knowledge of multiple programming langauages like : $languages."
                  "I excel in pair programming and working in an Agile enviroment."
                  "Some of the tools I have worked with include: $tools."
                  "IDEs that I am familair with are: $ide."
                  "I enjoy refactoring and improving code quality."
                  "I have earned several cetifications for Sumologic, Jira, and Confluence."
                  "I have a passion in software development and want to learn as much as possible!")

## now loop through the above array based on input
for (( i=0; i<($num_of_facts); i++ ));
do
   echo "$((i+1)). ${array[$i]}"
done

#asking for input, stored in answer
echo "Would you like my contact information? Enter 'y' for yes or 'n' for no"
read answer

#if statment
if [[ $answer = $str1 ]]
then
  echo "Email: $email"
  echo "LinkedIn: $linkedin"
  echo "github: $git"
  echo "Thank you. Hope you enjoyed my bash script:)"
else
  echo "Thank you. Hope you enjoyed my bash script:)"
fi
