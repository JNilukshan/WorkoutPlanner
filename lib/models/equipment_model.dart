class Equipment {
  final int id;
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final double noOfMinutes;
  final double noOfCalories;
  final bool isHandovered;

  Equipment({
    required this.id,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImageUrl,
    required this.noOfMinutes,
    required this.noOfCalories,
    required this.isHandovered,
  });
}
