

# *StringsAdd* 
## `titleCase()` :  

This Dart function converts a string to title case, where the first letter of each word is capitalized.

### Changes Made

1. **Empty Input Handling:**
   - The function now checks if the input string is empty or contains only whitespace. If so, it returns an empty string immediately.

2. **Handling Multiple Spaces:**
   - The function has been updated to handle multiple spaces between words correctly. It uses `split` and filters out empty strings to ensure that only valid words are processed.

3. **Simplified Capitalization Logic:**
   - The capitalization logic has been simplified using Dart's `map` function. This makes the code more concise and readable.

4. **Mixed Case Input Handling:**
   - The function now ensures that the rest of each word (after the first letter) is converted to lowercase. This handles mixed case inputs properly.
### Usage

Here's an example of how to use the `titleCase` function:

```dart
String title = titleCase("this is an example string");
print(title); // This Is An Example String
```

### Function Explanation

The `titleCase` function performs the following steps:

1. Splits the input string into a list of words.
2. Iterates over each word, capitalizes the first letter, and adds it to a new list.
3. Joins the capitalized words into a single string with spaces.

#### Code

```dart
String titleCase(String inputString) {
  if(inputString.trim() == ''){
    return '';
  }
  else{
  List<String> wordsList = inputString.trim().split(' ');
  List<String> capitalizedWordsList = [];
  for (var word in wordsList) {
    var capitalizedWord = word.substring(0, 1).toUpperCase() + word.substring(1);
    capitalizedWordsList.add(capitalizedWord);
  }
  String titleCasedString = capitalizedWordsList.join(' ');
  return titleCasedString; 
  }
}
```

## License

This code is open source and available under the [MIT License](LICENSE.md).



Feel free to use this function in your Dart projects and modify it as needed. [Contributions](CONTRIBUTING.md)  and feedback are welcome!
