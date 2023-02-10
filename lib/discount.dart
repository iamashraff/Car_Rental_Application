class Discount {
  String discountCode;
  double discountPercent;
  double discounteligibility;

  Discount(this.discountCode, this.discountPercent, this.discounteligibility);

  static List<Discount> discountList = [
    Discount('HALFDAY', 30, 12),
    Discount('FULLDAY', 50, 24),
    Discount('NEWUSER', 25, 8),
  ];
}
