void main() {
  // String concatenation
  String firstName = "Franklyn";
  String lastName = "Urama";
  String fullName = firstName + " " + lastName; // Concatenation
  print("Concatenated String: $fullName");

  // String interpolation
  String greeting = "Hello, my name is $fullName and I'm a software engineer.";
  print("Interpolated String: $greeting");

  // Substring extraction
  String extracted = fullName.substring(0, 8); // Extracts 'Franklyn'
  print("Extracted Substring: $extracted");

  // Case conversion
  String upperCaseName = fullName.toUpperCase();
  String lowerCaseName = fullName.toLowerCase();
  print("Uppercase: $upperCaseName");
  print("Lowercase: $lowerCaseName");

  // Reverse the string
  String reversedName = reverseString(fullName);
  print("Reversed String: $reversedName");

  // Count the length of the string
  int lengthOfName = fullName.length;
  print("Length of String: $lengthOfName");
}

// Function to reverse a string
String reverseString(String input) {
  return input.split('').reversed.join();
}
