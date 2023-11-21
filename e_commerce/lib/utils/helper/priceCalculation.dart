class PriceCalculations {
  static double calculateTotalPrice(double price, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = price * taxRate;

    double shippingCost = getShippingCost(price, location);

    return price + taxAmount + shippingCost;
  }

  static String calculateShippingCost(double price, String location) {
    double shippingCost = getShippingCost(price, location);
    return shippingCost.toStringAsFixed(2);
  }

  static double calculateTax(double price, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = price * taxRate;
    return taxAmount;
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(double price, String location) {
    return 5.00;
  }
}
