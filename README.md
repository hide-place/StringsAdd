

# *StringsAdd* 
## `titleCase` :  

This Dart function converts a string to title case, where the first letter of each word is capitalized.

## Usage

Here's an example of how to use the `titleCase` function:

```dart
String title = titleCase("this is an example string");
print(title); // This Is An Example String
```

## Function Explanation

The `titleCase` function performs the following steps:

1. Splits the input string into a list of words.
2. Iterates over each word, capitalizes the first letter, and adds it to a new list.
3. Joins the capitalized words into a single string with spaces.

### Code

```dart
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
```

## License

This code is open source and available under the [MIT License](LICENSE.md).



Feel free to use this function in your Dart projects and modify it as needed. [Contributions](CONTRIBUTING.md)  and feedback are welcome!
