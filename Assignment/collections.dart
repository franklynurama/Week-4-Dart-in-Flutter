void main() {
  // 1. List - Ordered collection, allows duplicates
  List<String> shoppingList = ["Milk", "Eggs", "Bread"];

  // Adding to the list
  shoppingList.add("Butter");
  shoppingList.add("Coffee"); // List allows duplicates

  print("Shopping List (after adding): $shoppingList");

  // Removing from the list
  shoppingList.remove("Eggs"); // Removes the first occurrence of "Eggs"
  print("Shopping List (after removing 'Eggs'): $shoppingList");

  // Iterating over the list
  print("Iterating over Shopping List:");
  for (String item in shoppingList) {
    print(item);
  }

  // Use case for List: Best when you need an ordered collection with possible duplicates.

  // 2. Set - Unordered collection, no duplicates allowed
  Set<int> uniqueNumbers = {1, 2, 3, 4, 5};

  // Adding to the set
  uniqueNumbers.add(6);
  uniqueNumbers.add(3); // Duplicate, won't be added

  print("\nUnique Numbers Set (after adding): $uniqueNumbers");

  // Removing from the set
  uniqueNumbers.remove(4);
  print("Unique Numbers Set (after removing 4): $uniqueNumbers");

  // Iterating over the set
  print("Iterating over Unique Numbers Set:");
  for (int number in uniqueNumbers) {
    print(number);
  }

  // Use case for Set: Best when you need a collection of unique items and don't care about order.

  // 3. Map - Key-value pairs
  Map<String, int> fruitPrices = {"Apple": 3, "Banana": 2, "Cherry": 5};

  // Adding to the map
  fruitPrices["Orange"] = 4;
  print("\nFruit Prices Map (after adding Orange): $fruitPrices");

  // Removing from the map
  fruitPrices.remove("Banana");
  print("Fruit Prices Map (after removing Banana): $fruitPrices");

  // Iterating over the map (keys and values)
  print("Iterating over Fruit Prices Map:");
  fruitPrices.forEach((key, value) {
    print("$key: \$$value");
  });

  // Use case for Map: Best when you need to associate keys with values and quickly look up items by key.
}
