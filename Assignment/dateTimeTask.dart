void main() {
  // Current date and time
  DateTime now = DateTime.now();
  print("Current Date and Time: ${formatDate(now)}");

  // Adding days
  DateTime futureDate = now.add(Duration(days: 10));
  print("Date after adding 10 days: ${formatDate(futureDate)}");

  // Subtracting days
  DateTime pastDate = now.subtract(Duration(days: 5));
  print("Date after subtracting 5 days: ${formatDate(pastDate)}");

  // Parsing a date string
  String dateString = "2024-09-20 14:30:00";
  DateTime parsedDate = DateTime.parse(dateString);
  print("Parsed Date: ${formatDate(parsedDate)}");

  // Calculating the difference between two dates
  Duration difference = futureDate.difference(pastDate);
  print("Difference between future and past date: ${difference.inDays} days");
}

// Function to format DateTime to a string
String formatDate(DateTime date) {
  return "${date.year}-${twoDigits(date.month)}-${twoDigits(date.day)} ${twoDigits(date.hour)}:${twoDigits(date.minute)}";
}

// Helper function to ensure two-digit formatting (e.g., '01' for January)
String twoDigits(int n) {
  return n.toString().padLeft(2, '0');
}
