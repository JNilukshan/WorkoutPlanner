import 'package:flutter_application_4/models/equipment_model.dart';
import 'package:flutter_application_4/models/exercise_model.dart';
import 'package:flutter_application_4/models/user_model.dart';

User user = 
    User(
        userId: 0,
        fullName: "Nilukshan",
        gender: "Male",
        address: "St.Sebastiyan Road, Pattiyagama, Madampe",
        age: 23,
        description: "Prefer Calisthatic",
        exerciseList: [
          Exercise(
            id: 1,
            exerciseName: "Pullups",
            exerciseImageUrl: "assets/images/exercises/downward-facing.png",
            noOfMinutes: 15,
            isCompleted: false,
          ),
          Exercise(
            id: 2,
            exerciseName: "Squats",
            exerciseImageUrl: "assets/images/exercises/downward-facing.png",
            noOfMinutes: 15,
            isCompleted: false,
          ),
        ],
        equipmentList: [
          Equipment(
            id: 0,
            equipmentName: "Dumbel",
            equipmentDescription:
                "Use for hand exercises and can use for leg exercises",
            equipmentImageUrl: "assets/images/equipments/dumbbells2.png",
            noOfMinutes: 15,
            noOfCalories: 0,
            isHandovered: false,
          ),
          Equipment(
            id: 1,
            equipmentName: "Dumbel",
            equipmentDescription:
                "Use for hand exercises and can use for leg exercises",
            equipmentImageUrl: "assets/images/equipments/dumbbells2.png",
            noOfMinutes: 15,
            noOfCalories: 0,
            isHandovered: false,
          ),
        ],
        favExerciseList: [
          Exercise(
            id: 1,
            exerciseName: "Pullups",
            exerciseImageUrl: "assets/images/exercises/downward-facing.png",
            noOfMinutes: 15,
            isCompleted: false,
          ),
        ],
        favEquipmentList: [
          Equipment(
            id: 0,
            equipmentName: "Dumbel",
            equipmentDescription:
                "Use for hand exercises and can use for leg exercises",
            equipmentImageUrl: "assets/images/equipments/dumbbells2.png",
            noOfMinutes: 15,
            noOfCalories: 0,
            isHandovered: false,
          ),
        ],
    );
