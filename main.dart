List<Map<String, dynamic>> student = [
  {"name": "Kenje", "course": "BSIT", "grade": 95, "passed": true},
  {"name": "John", "course": "BSCS", "grade": 78, "passed": true},
  {"name": "Sarah", "course": "BSBA", "grade": 68, "passed": false},
  {"name": "Xyen", "course": "BSBA", "grade": 90, "passed": false},
];

int totalStudents(List<Map<String, dynamic>> students) {
  return students.length;
}

int countPassedStudents(List<Map<String, dynamic>> students) {
  int passedStudents = 0;
  for (Map<String, dynamic> student in students) {
    if (student["passed"] == true) {
      passedStudents++;
    }
  }
  return passedStudents;
}

int failedStudent(List<Map<String, dynamic>> students) {
  int failedStudent = 0;
  for (Map<String, dynamic> student in students) {
    if (student["passed"] == false) {
      failedStudent++;
    }
  }
  return failedStudent;
}

double averageGrade(List<Map<String, dynamic>> students) {
  int grades = 0;
  for (Map<String, dynamic> student in students) {
    grades += (student["grade"] as int);
  }
  return grades / students.length;
}

int highestGrade(List<Map<String, dynamic>> students) {
  int highest = students[0]["grade"] as int;

  for (Map<String, dynamic> student in students) {
    if (student["grade"] as int > highest) {
      highest = student["grade"] as int;
    }
  }
  return highest;
}

int lowestGrade(List<Map<String, dynamic>> students) {
  int lowest = students[0]["grade"] as int;
  for (Map<String, dynamic> student in students) {
    if (student["grade"] as int < lowest) {
      lowest = student["grade"] as int;
    }
  }
  return lowest;
}

int honorStudents(List<Map<String, dynamic>> students) {
  int honorStudents = 0;
  for (Map<String, dynamic> student in students) {
    if (student["grade"] as int >= 90) {
      honorStudents++;
    }
  }
  return honorStudents;
}

void showStudents(List<Map<String, dynamic>> students) {
  for (Map<String, dynamic> student in students) {
    print("name: ${student["name"]}");
    print("course: ${student["course"]}");
    print("grades: ${student["grade"]}");
    print("passed: ${student["passed"]}");

    if (student["grade"] as int >= 90) {
      print("Honor student");
    } else {
      print("average Student");
    }

    print("--------------------");
  }
}

void main() {
  showStudents(student);
  print("Total students: ${totalStudents(student)}");
  print("Passed Students: ${countPassedStudents(student)}");
  print("Failed Student: ${failedStudent(student)}");
  print("Average Grades: ${averageGrade(student)}");
  print("Highest Grade: ${highestGrade(student)}");
  print("Lowest Grade ${lowestGrade(student)}");
  print("HonorStudents: ${honorStudents(student)}");
}
