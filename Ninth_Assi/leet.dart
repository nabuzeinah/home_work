void main() {
  String s = "anagram";
  String t = "nagaram";
  print(isAnagram(s, t));
}

bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  Map<String, int> charCount = {};

  for (int i = 0; i < s.length; i++) {
    charCount[s[i]] = (charCount[s[i]] ?? 0) + 1;
    charCount[t[i]] = (charCount[t[i]] ?? 0) - 1;
  }

  for (var count in charCount.values) {
    if (count != 0) return false;
  }

  return true;
}
