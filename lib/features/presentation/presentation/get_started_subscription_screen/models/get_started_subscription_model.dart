/// This class defines the variables used in the [get_started_subscription_screen],
/// and is typically used to hold data that is passed between different parts of the application.
//class GetStartedSubscriptionModel {}
/// This class defines the variables used in the [subscription_screen],
/// and is typically used to hold data that is passed between different parts of the application.
//class SubscriptionModel {}
class GetSubscriptionModel {
  int phone;
  String artiste;
  String judge;

  GetSubscriptionModel(
      {required this.phone, required this.artiste, required this.judge});

  // Factory constructor to create a SubscriptionModel instance from JSON
  factory GetSubscriptionModel.fromJson(Map<String, dynamic> json) {
    return GetSubscriptionModel(
      phone: json['phone'],
      artiste: json['artiste'],
      judge: json['judge'],
      //
    );
  }
}
