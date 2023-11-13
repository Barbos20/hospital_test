class HospitalPerson {
  String name;

  HospitalPerson(this.name);
}

class ChiefDoctor extends HospitalPerson {
  ChiefDoctor(String name) : super(name);

  void handleRequest(Patient patient) {
    print(
        "Главврач $name обрабатывает запрос пациента ${patient.name} c сотоянием ${patient.isCritical}");
  }
}

class Doctor extends HospitalPerson {
  Doctor(String name) : super(name);

  void handleRequest(Patient patient) {
    print(
        "Врач $name обрабатывает запрос пациента ${patient.name} c сотоянием ${patient.isCritical}");
  }
}

class Nurse extends HospitalPerson {
  Nurse(String name) : super(name);

  void handleRequest(Patient patient) {
    print(
        "Медсестра $name обрабатывает запрос пациента ${patient.name} c сотоянием ${patient.isCritical}");
  }
}

class Patient {
  String name;
  int isCritical;

  Patient(this.name, this.isCritical);
}

class Hospital {
  ChiefDoctor chiefDoctor;
  Doctor doctors;
  Nurse nurses;

  Hospital(this.chiefDoctor, this.doctors, this.nurses);

  void processRequest(Patient patient) {
    if (patient.isCritical == 3) {
      chiefDoctor.handleRequest(patient);
    } else {
      if (patient.isCritical == 2) {
        doctors.handleRequest(patient);
      } else {
        if (patient.isCritical == 1) {
          nurses.handleRequest(patient);
        }
      }
    }
  }
}
