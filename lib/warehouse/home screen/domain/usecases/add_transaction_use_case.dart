import 'package:auth/warehouse/home%20screen/data/models/transaction_model.dart';
import 'package:auth/warehouse/home%20screen/domain/repositories/warehouseRep.dart';

class AddTransactionUseCase {
  final WarehouseRepository repository;

  AddTransactionUseCase(this.repository);

  Future<void> call(TransactionModel transaction) {
    return repository.addTransaction(transaction);
  }
}
