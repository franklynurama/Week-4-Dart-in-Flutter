import 'dart:io';

void main() async {
  // Define the file names
  String inputFileName = 'input.txt';
  String outputFileName = 'output.txt';

  // Read content from the input file
  try {
    String content = await readFile(inputFileName);
    print("Content read from $inputFileName:\n$content");

    // Write new data to the output file
    String newData = "This is the new data written to the output file.";
    await writeFile(outputFileName, newData);
    print("New data written to $outputFileName.");
  } catch (e) {
    print("An error occurred: $e");
  }
}

// Function to read the content of a file
Future<String> readFile(String fileName) async {
  try {
    File inputFile = File(fileName);
    String content = await inputFile.readAsString();
    return content;
  } catch (e) {
    throw Exception("Failed to read from $fileName: $e");
  }
}

// Function to write data to a file
Future<void> writeFile(String fileName, String data) async {
  try {
    File outputFile = File(fileName);
    await outputFile.writeAsString(data, mode: FileMode.write);
  } catch (e) {
    throw Exception("Failed to write to $fileName: $e");
  }
}
