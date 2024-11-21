import 'package:auth/warehouse/home%20screen/domain/entities/Transaction.dart';

class TransactionModel extends Transaction {
  TransactionModel({
    required super.type,
    required super.totalPrice,
    required super.nameOfProduct,
    required super.reference,
    required super.quantity,
    required super.date,
    required super.warehouseNumber,
  });

  // Factory constructor to convert from JSON to TransactionModel
  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      type: json['type'] as String,
      totalPrice: json['totalPrice'].toDouble(),
      nameOfProduct: json['nameOfProduct'] as String,
      reference: json['reference'] as String,
      quantity: json['quantity'] as int,
      date: DateTime.parse(json['date'] as String),
      warehouseNumber: json['warehouseNumber'] as int,
    );
  }

  // Method to convert a TransactionModel back into a JSON map
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'totalPrice': totalPrice,
      'nameOfProduct': nameOfProduct,
      'reference': reference,
      'quantity': quantity,
      'date': date.toIso8601String(),
      'warehouseNumber': warehouseNumber,
    };
  }
}
