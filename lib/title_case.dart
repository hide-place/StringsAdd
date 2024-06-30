/// Converts a string to title case, where the first letter of each word is capitalized.
/// 
/// Example:
/// ```dart
/// String title = titleCase("this is an example string");
/// print(title); // This Is An Example String
/// ```

String titleCase(String inputString) {
  // Split the input string into a list of words
  List<String> wordsList = inputString.split(' ');
  
  // List to store the new words with capitalized first letters
  List<String> capitalizedWordsList = [];

  // Iterate over each word in the list
  for (var word in wordsList) {
    // Capitalize the first letter and add the rest of the word
    var capitalizedWord = word.substring(0, 1).toUpperCase() + word.substring(1);
    // Add the capitalized word to the new list
    capitalizedWordsList.add(capitalizedWord);
  }

  // Join the capitalized words into a single string with spaces
  String titleCasedString = capitalizedWordsList.join(' ');

  return titleCasedString;
}
