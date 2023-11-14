class HospitalPerson {
  String name;
  String position;
  int opportunity;
  HospitalPerson(this.name, this.position, this.opportunity);

  void handleRequest(Patient patient) {
    print(
        "$position $name обрабатывает запрос пациента ${patient.name} c сотоянием ${patient.isCritical}");
  }
}

class PersonDoctor extends HospitalPerson {
  PersonDoctor(String name, String position, int opportunity)
      : super(name, position, opportunity);
}

class Patient {
  String name;
  int isCritical;

  Patient(this.name, this.isCritical);
}

class Hospital {
  List<HospitalPerson> doctorList;
  Hospital(this.doctorList);

  void processRequests(List<Patient> patients) {
    for (var person in doctorList) {
      for (var patient in patients) {
        if (patient.isCritical == person.opportunity) {
          person.handleRequest(patient);
        }
      }
    }
  }
}
