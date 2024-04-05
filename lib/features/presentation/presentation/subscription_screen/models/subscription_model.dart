import 'dart:convert';

// class SubscriptionModel {
//   final String subscription;

//   SubscriptionModel(this.subscription);

//   factory SubscriptionModel.fromJson(Map<String, dynamic> json) {
//     return SubscriptionModel(json['subscription'] ?? '');
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'subscription': subscription,
//     };
//   }
// }

///
class SubscriptionModel {
  String subId;
  String? subStatus;
  String subType;
  double? subAmount;
  String? user;

  SubscriptionModel({
    required this.subId,
    this.subStatus,
    required this.subType,
    this.subAmount,
    this.user,
  });

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) {
    return SubscriptionModel(
      subId: json['sub_id'],
      subStatus: json['sub_status'],
      subType: json['sub_type'],
      subAmount: json['sub_amount']?.toDouble(),
      user: json['user'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sub_id'] = this.subId;
    data['sub_status'] = this.subStatus;
    data['sub_type'] = this.subType;
    data['sub_amount'] = this.subAmount;
    data['user'] = this.user;
    return data;
  }
}
