#!/bin/bash

FRUITS=(Apple Carrot Mango) #array
echo "First Fruit is : ${FRUITS[0]}"
echo "Second Fruit is : ${FRUITS[1]}"

echo "List of Fruits are : ${FRUITS[@]}"
echo "Count No.Of Elements in an array : ${#FRUITS[@]}"
# Element to delete
Non_Fruit=${FRUITS[1]}
echo "Non-Fruite/Delete Fruite for existing list of fruits: ${Non_Fruit}"
# Create a new array excluding the non-fruit to delete
ACTUAL_FRUITS=()
for fruits in "${FRUITS[@]}"; do
  if [[ $fruits -ne "$Non_Fruit" ]]; then
    ACTUAL_FRUITS+=("$fruits")
  fi
done

# Print the updated fruits
echo "Updated ACTUAL FRUITS: ${ACTUAL_FRUITS[@]}"
echo "After delete ceount No.Of Elements in an array : ${#ACTUAL_FRUITS[@]}"
