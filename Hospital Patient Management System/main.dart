List<Map<String, dynamic>> patient = [
  {
    "name": "John Cruz",
    "doctor": "Dr. Santos",
    "age": 25,
    "admitted": true,
    "bill": 8500,
  },
  {
    "name": "Sarah Reyes",
    "doctor": "Dr. Lim",
    "age": 41,
    "admitted": false,
    "bill": 0,
  },
  {
    "name": "Ken Herrera",
    "doctor": "Dr. Santos",
    "age": 20,
    "admitted": true,
    "bill": 12000,
  },
  {
    "name": "Maria Lopez",
    "doctor": "Dr. Garcia",
    "age": 65,
    "admitted": true,
    "bill": 15500,
  },
];
int totalPatients(List<Map<String, dynamic>> patients) {
  return patients.length;
}

int countAdmittedPatients(List<Map<String, dynamic>> patients) {
  int admittedPatients = 0;
  for (Map<String, dynamic> patient in patients) {
    if (patient["admitted"] == true) {
      admittedPatients++;
    }
  }
  return admittedPatients;
}

void showPatients(List<Map<String, dynamic>> patients) {
  for (Map<String, dynamic> patient in patients) {
    print("Patient: ${patient["name"]}");
    print("Doctor: ${patient["doctor"]}");
    print("age: ${patient["age"]}");
    print("admitted: ${patient["admitted"]}");
    print("bill: ${patient["bill"]}");

    print("-------------------------");
  }
}

int dischargedPatients(List<Map<String, dynamic>> patients) {
  int discharged = 0;
  for (Map<String, dynamic> patient in patients) {
    if (patient["bill"] == false) {
      discharged++;
    }
  }
  return discharged;
}

double averageBill(List<Map<String, dynamic>> patients) {
  int averagebill = 0;
  for (Map<String, dynamic> patient in patients) {
    averagebill += (patient["bill"]) as int;
  }
  return averagebill / patients.length;
}

int highestBill(List<Map<String, dynamic>> patients) {
  int highest = patient[0]["bill"] as int;

  for (Map<String, dynamic> patient in patients) {
    if (patient["bill"] as int > highest) {
      highest = patient["bill"] as int;
    }
  }
  return highest;
}

int lowestBill(List<Map<String, dynamic>> patients) {
  int lowestBill = patient[0]["bill"] as int;
  for (Map<String, dynamic> patient in patients) {
    if (patient["bill"] as int < lowestBill) {}
  }
  return lowestBill;
}

int countSeniorCitizen(List<Map<String, dynamic>> patients) {
  int seniorCitizen = 0;
  for (Map<String, dynamic> patient in patients) {
    if (patient["age"] as int >= 60) {
      seniorCitizen++;
    }
  }
  return seniorCitizen;
}

int countPatientsByDoctor(List<Map<String, dynamic>> patients) {
  int drSantos = 0;
  for (Map<String, dynamic> patient in patients) {
    if (patient["doctor"] == "Dr. Santos") {
      drSantos++;
    }
  }
  return drSantos;
}

void main() {
  showPatients(patient);

  print("Total Patients: ${totalPatients(patient)}");
  print("Admitted Patients: ${countAdmittedPatients(patient)}");
  print("discharged patients: ${dischargedPatients(patient)}");
  print("Average Bill: ${averageBill(patient)}");
  print("Highest Bill: ${highestBill(patient)}");
  print("Lowest Bill: ${lowestBill(patient)}");
  print("Senior Citizen: ${countSeniorCitizen(patient)}");
  print("Patients of Dr. Santos: ${countPatientsByDoctor(patient)}");
}
