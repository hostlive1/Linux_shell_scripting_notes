#!/bin/bash
echo "Hello World!!"

# Comments:
#This is the single line comment
<<comm
This is 
a multi
line comment
comm

echo -e "\n"

# Variables:
name="Aditya"
age=24
weight=55.76
echo "My name is $name and age is $age."

name="Tejal"
echo "My name is ${name} and age is $age."

HOSTNAME=$(hostname)
echo "Name of the server is $HOSTNAME."
echo "Current directory path is $(pwd)."

echo -e "\n"

# Arrays:
myarray=(1 10.5 Aditya "Hello" Good)
echo "${myarray[0]}"
echo "${myarray[2]}"
echo "$myarray"

echo "All the values in my  array is ${myarray[*]}."
echo "Length of my array is ${#myarray[*]}."
echo "Printing values given range: ${myarray[*]:0}."
echo "Printing values given range: ${myarray[*]:1}."
echo "Printing values given range: ${myarray[*]:1:3}."

echo "Adding new values to array:"
myarray+=(1000 added)
echo "${myarray[*]}"

echo "Updating current values in array:"
myarray[1]=9.5
echo ${myarray[*]}

echo Deleting values from the array: # Without quotes bash act it as multiple arguments instead of single string
unset "myarray[1]"
echo "${myarray[*]}"

echo "Storing the data as key-value pair in arrays:"
declare -A myApair
myApair=([name]=Bob [city]=Prague [ahe]=30)
echo "${myApair['name']}"
echo "${myApair['city']}"
echo "${myApair[*]}"

echo -e "\n"

# String Operations:
mystr="Hey buddy, How are you.!"
echo "Length of the string is ${#mystr}."
echo "Upper case is---> ${mystr^^}"
echo "Lower case is---> ${mystr,,}"
echo "Replace buddy---> ${mystr/buddy/Aditya}"
echo "Print in range---> ${mystr:4:5}"

echo -e "\n"

# Taking User Input:
read -p "Enter value: " name
echo "Welcome ${name}"

echo -e "\n"

# Performing Arthmetic Operations:
x=10
y=20
sum=$x+$y # "let" is used for Arithmetic Operations or you can use "(())" instead of "let".
echo "Sum of numbers are: $((sum))"
let mul=$x*$y
echo "Mul of numbers are: $mul"

echo -e "\n"

# Conditional Statements:
read -p "Enter Marks: " marks
if [ $marks -gt 40 ] # gt = greater than and inside square bracket spaces are required.
then
    echo "You are passed!!"
    echo "Multiple lines can be added..."
else
    echo "You are not passed!!"
fi
# -eq/== , -ge , -le , -ne/!= , -gt , -lt

# Conditional Statement ELIF:
if [ $marks -gt 80 ]
then
    echo "You are passed with distinction!!"
elif [ $marks -ge 40 ]
then
    echo "You are passed!!"
else
    echo "You are not passed!!"
fi

echo -e "\n"

# Case Statement:
echo "a) To print current data, time."
echo "b) To print present working directory."
echo "c) To print list."
echo "1) To print list."
read -p "Enter your choice: " choice
case $choice in
    a) 
        date
        hostname
        ;; # This way you can provide multiple options.
    b) pwd;;
    c) ls;;
    1) ls;;
    *) echo "Invalid selection..."
esac 
