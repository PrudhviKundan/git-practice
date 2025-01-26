#!/bin/bash

FRUITS=(Apple Carrot Mango) #array
echo "First Fruit is : ${FRUITS[0]}"
echo "Second Fruit is : ${FRUITS[1]}"

echo "List of Fruits are : ${FRUITS[@]}"
echo "Count No.Of Elements in an array : ${#FRUITS[@]}"
# Element to delete
Non_Fruit=${FRUITS[1]}

# Create a new array excluding the non-fruit to delete
ACTUAL_FRUITS=()
for FRUITS in "${ACTUAL_FRUITS[@]}"; do
  if [[ $FRUITS != "$Non_Fruit" ]]; then
    ACTUAL_FRUITS+=("$FRUITS")
  fi
done

# Print the updated fruits
echo "Updated ACTUAL FRUITS: ${ACTUAL_FRUITS[@]}"
echo "After delete ceount No.Of Elements in an array : ${#FRUITS[@]}"
