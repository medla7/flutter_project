import 'package:auth/warehouse/home%20screen/data/datasources/RemoteDataSource.dart';
import 'package:auth/warehouse/home%20screen/data/models/transaction_model.dart';
import 'package:auth/warehouse/home%20screen/domain/entities/Transaction.dart';
import 'package:auth/warehouse/home%20screen/domain/repositories/warehouseRep.dart';

class WarehouseRepositoryImpl implements WarehouseRepository {
  final RemoteDataSource remoteDataSource;

  WarehouseRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Transaction>> getTransactions() async {
    final itemList = await remoteDataSource.fetchItems();
    return itemList.map((itemData) => TransactionModel.fromJson(itemData)).toList();
  }

  @override
  Future<void> addTransaction(TransactionModel item) async {
    await remoteDataSource.addTransaction(item.toJson());
  }

  @override
  Future<void> updateTransaction(TransactionModel item) async {
    await remoteDataSource.updateTransaction((item).toJson());
    
  }

  @override
  Future<void> deleteTransaction(String Id) async {
    await remoteDataSource.deleteTransaction(Id);
  }
}
