class ColorError implements Exception{
  final String msg;
  const ColorError ([this.msg]);
  String toString() =>msg;
}