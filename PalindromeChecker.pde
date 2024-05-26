public void setup() {
  String lines[] = new String[]{"tacocat", "test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  for (int i=0; i < lines.length; i++) {
    if (palindrome(lines[i])==true) {
      System.out.println(lines[i] + " IS a palindrome.");
    } else {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}




public boolean palindrome(String word) {
  boolean isTrue = false;
  if (ridOfSpaces(word).toLowerCase().equals(reverse(word))) {
    isTrue = true;
  }
  return isTrue;
}




public String reverse(String str) {
  str= (ridOfSpaces(str)).toLowerCase();
  String newStr = new String();
  for (int i = str.length()-1; i >= 1 - 1; i--) {
    newStr+=str.substring(i, i+1);
  }
  return newStr;
}




public String ridOfSpaces(String sWord) {
  String newWord = new String();
  for (int i = 0; i < sWord.length(); i++) {
    if (sWord.charAt(i) != ' ' && sWord.charAt(i) != ',' && sWord.charAt(i) != '!' && sWord.charAt(i) != '\'' ) {
      newWord += sWord.charAt(i);
    }
  }
  return newWord;
}
