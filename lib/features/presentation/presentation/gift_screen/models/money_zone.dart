/// This class defines the variables used in the [gift_screen],
/// and is typically used to hold data that is passed between different parts of the application.
//class GiftModel {}

// Define a model for the data you send to the Money Zone endpoint
class MoneyZoneRequest {
  final String userId;
  final double amount;

  MoneyZoneRequest({
    required this.userId,
    required this.amount,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'amount': amount,
    };
  }
}
