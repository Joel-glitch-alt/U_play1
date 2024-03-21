import 'dart:convert';

class SubscriptionModel {
  final String subscription;

  SubscriptionModel(this.subscription);

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) {
    return SubscriptionModel(json['subscription'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {
      'subscription': subscription,
    };
  }
}
