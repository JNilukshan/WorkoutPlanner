import 'package:flutter_application_4/models/equipment_model.dart';
import 'package:flutter_application_4/models/exercise_model.dart';

class User {
  final int userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totalexerciseisCompleted = 0;
  int totalequipmetisHandovered = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;

  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  User({
    required this.userId,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description,
    required this.exerciseList,
    required this.equipmentList,
    required this.favExerciseList,
    required this.favEquipmentList,
  });
}
