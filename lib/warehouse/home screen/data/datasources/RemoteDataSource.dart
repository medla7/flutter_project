import 'package:auth/core/network/apiClient.dart';

class RemoteDataSource {
  final ApiClient apiClient;

  RemoteDataSource(this.apiClient);

  Future<List<Map<String, dynamic>>> fetchItems() async {
    final data = await apiClient.get('warehouse/Transaction');
    return List<Map<String, dynamic>>.from(data);
  }

  Future<void> addTransaction(Map<String, dynamic> transaction) async {
    await apiClient.post(
      'warehouse/Transaction',
      data: transaction,
    );
  }

  Future<void> updateTransaction(Map<String, dynamic> transaction) async {
    // Assuming the transaction map contains an 'id' key
    final id = transaction['id'];
    await apiClient.put(
      'warehouse/Transaction/$id',
      data: transaction,
    );
  }

  Future<void> deleteTransaction(String id) async {
    await apiClient.delete('warehouse/Transaction/$id');
  }
}
