#!/bin/bash

FRUITS=(Apple Pineapple Mango) #array
echo "First Fruit is : ${FRUITS[0]}"
echo "Second Fruit is : ${FRUITS[1]}"

echo "List of Fruits are : ${FRUITS[@]}"
echo "Count No.Of Elements in an array : ${#FRUITS[@]}"
$Delete=${FRUITS[1]}
echo "Delete individual array element :  ${FRUITS[@]/$Delete}"
echo "After delete ceount No.Of Elements in an array : ${#FRUITS[@]}"
