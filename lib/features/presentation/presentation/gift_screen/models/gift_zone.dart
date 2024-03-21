// Define a model for the data you expect to receive from the Gift Zone endpoint
class GiftZoneResponse {
  final String giftName;
  final int points;

  GiftZoneResponse({
    required this.giftName,
    required this.points,
  });

  factory GiftZoneResponse.fromJson(Map<String, dynamic> json) {
    return GiftZoneResponse(
      giftName: json['giftName'],
      points: json['points'],
    );
  }
  Map<String, dynamic> toJson() {
    // Implement logic to convert class properties to a JSON map
    return {
      // Map class properties to JSON keys and values
    };
  }
}
