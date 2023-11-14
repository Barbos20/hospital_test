class HospitalPerson {
  String name;
  String position;
  int opportunity;
  HospitalPerson(this.name, this.position, this.opportunity);
}

class PersonDoctor extends HospitalPerson {
  PersonDoctor(String name, String position, int opportunity)
      : super(name, position, opportunity);
  void handleRequest(Patient patient) {
    print(
        "$position $name обрабатывает запрос пациента ${patient.name} c сотоянием ${patient.isCritical}");
  }
}

class Patient {
  String name;
  int isCritical;

  Patient(this.name, this.isCritical);
}

class Hospital {
  PersonDoctor doctors;
  Hospital(this.doctors);

  void processRequests(List<Patient> patients, List<PersonDoctor> doctorList) {
    for (var doctor in doctorList) {
      for (var patient in patients) {
        if (patient.isCritical == doctor.opportunity) {
          print(
              "${doctor.position} ${doctor.name} обрабатывает запрос пациента ${patient.name} c состоянием ${patient.isCritical}");
        }
      }
    }
  }
}
