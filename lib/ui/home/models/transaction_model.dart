import 'menu_model.dart';

enum TransactionStatus {
  inProgress,
  cancelled,
  finished,
}

class TransactionModel {
  final MenuModel food;
  final int quantity;
  final double totalPrice;
  final DateTime transactionTime;
  final TransactionStatus status;

  TransactionModel({
    required this.food,
    required this.quantity,
    required this.totalPrice,
    required this.transactionTime,
    required this.status,
  });
}

final List<TransactionModel> mockTransactions = [
  TransactionModel(
    food: mockFoods[0],
    quantity: 3,
    totalPrice: mockFoods[0].price * 3 +
        mockFoods[0].price * 3 * 0.1 +
        50000, // price + tax (10%) + driverFee
    transactionTime: DateTime.now(),
    status: TransactionStatus.inProgress,
  ),
  TransactionModel(
    food: mockFoods[2],
    quantity: 10,
    totalPrice: mockFoods[2].price * 10 +
        mockFoods[2].price * 10 * 0.1 +
        50000, // price + tax (10%) + driverFee
    transactionTime: DateTime.now(),
    status: TransactionStatus.inProgress,
  ),
  TransactionModel(
    food: mockFoods[3],
    quantity: 2,
    totalPrice: mockFoods[3].price * 2 +
        mockFoods[3].price * 2 +
        50000, // price + tax (10%) + driverFee
    transactionTime: DateTime.now(),
    status: TransactionStatus.inProgress,
  ),
  TransactionModel(
    food: mockFoods[3],
    quantity: 1,
    totalPrice: mockFoods[3].price * 1 +
        mockFoods[3].price * 1 * 0.1 +
        50000, // price + tax (10%) + driverFee
    transactionTime: DateTime(2024, 9, 17, 14, 30),
    status: TransactionStatus.finished,
  ),
  TransactionModel(
    food: mockFoods[1],
    quantity: 2,
    totalPrice: mockFoods[1].price * 2 +
        mockFoods[1].price * 2 * 0.1 +
        50000, // price + tax (10%) + driverFee
    transactionTime: DateTime(2024, 9, 19, 21, 30),
    status: TransactionStatus.cancelled,
  ),
];
