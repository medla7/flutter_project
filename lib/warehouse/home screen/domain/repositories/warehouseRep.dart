import 'package:auth/warehouse/home%20screen/data/models/transaction_model.dart';
import 'package:auth/warehouse/home%20screen/domain/entities/Transaction.dart';

abstract class WarehouseRepository {
  Future<List<Transaction>> getTransactions();
  Future<void> addTransaction(TransactionModel item);
  Future<void> updateTransaction(TransactionModel item);
  Future<void> deleteTransaction(String itemId);
}