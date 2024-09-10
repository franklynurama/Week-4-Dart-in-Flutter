import 'dart:io'; // For file handling

void main() async {
  // User input
  print("Enter your full name:");
  String userInput = stdin.readLineSync() ?? "Anonymous";

  // String manipulation
  String reversedInput = reverseString(userInput);
  String upperCaseInput = userInput.toUpperCase();
  String lowerCaseInput = userInput.toLowerCase();
  int lengthOfInput = userInput.length;
  String substringInput =
      userInput.substring(0, userInput.length > 3 ? 3 : userInput.length);

  // Collection: List to store manipulations
  List<String> manipulations = [];
  manipulations.add("Original: $userInput");
  manipulations.add("Reversed: $reversedInput");
  manipulations.add("Uppercase: $upperCaseInput");
  manipulations.add("Lowercase: $lowerCaseInput");
  manipulations.add("Substring (first 3 chars): $substringInput");
  manipulations.add("Length: $lengthOfInput");

  // Set to store unique manipulations
  Set<String> uniqueManipulations = manipulations.toSet();

  // Date and time
  DateTime now = DateTime.now();
  String formattedDate =
      "${now.year}-${twoDigits(now.month)}-${twoDigits(now.day)} ${twoDigits(now.hour)}:${twoDigits(now.minute)}";

  // Map to store metadata
  Map<String, dynamic> userInfo = {
    'name': userInput,
    'length': lengthOfInput,
    'entry_time': formattedDate
  };

  // File handling
  try {
    // Writing to file
    String fileName = 'user_manipulations.txt';
    File file = File(fileName);
    await file.writeAsString("User: ${userInfo['name']}\n",
        mode: FileMode.append);
    await file.writeAsString("Entry Time: ${userInfo['entry_time']}\n",
        mode: FileMode.append);
    await file.writeAsString("String Manipulations:\n", mode: FileMode.append);
    for (String item in uniqueManipulations) {
      await file.writeAsString("$item\n", mode: FileMode.append);
    }
    await file.writeAsString("\n", mode: FileMode.append);

    print("Data successfully written to $fileName");

    // Reading from file
    String fileContent = await file.readAsString();
    print("\n--- File Content ---\n$fileContent");
  } catch (e) {
    print("Error during file operations: $e");
  }

  // Date Manipulation: Calculate difference between two dates
  DateTime futureDate = now.add(Duration(days: 7));
  Duration difference = futureDate.difference(now);
  print("Days until next week: ${difference.inDays} days");
}

// String reversal function
String reverseString(String input) {
  return input.split('').reversed.join();
}

// Helper function to ensure two-digit formatting (e.g., '01' for January)
String twoDigits(int n) {
  return n.toString().padLeft(2, '0');
}
