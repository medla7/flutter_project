class Transaction {
  final String type;
  final String nameOfProduct;
  final String reference;
  final int quantity;
  final double totalPrice;
  final DateTime date;
  final int warehouseNumber;

  Transaction(
      {required this.type,
      required this.nameOfProduct,
      required this.reference,
      required this.quantity,
      required this.totalPrice,
      required this.date,
      required this.warehouseNumber});
}
