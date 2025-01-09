String countryCodeToFlag(String countryCode) {
  const base = 0x1F1E6;
  final flag = countryCode.toUpperCase().runes.map((char) => base + (char - 'A'.codeUnitAt(0))).toList();
  return String.fromCharCodes(flag);
}