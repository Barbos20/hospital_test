import 'dart:math';

import 'package:hospital_test/hospital_test.dart';

void main() {
  var chiefDoctor = ChiefDoctor("Иванов");
  var doctors = Doctor("Сидоров");
  var nurses = Nurse("Ольга");

  var hospital = Hospital(chiefDoctor, doctors, nurses);

  var random = Random();

  var criticalPatient = Patient("Васька", random.nextInt(3) + 1);
  var nonCriticalPatient = Patient("Борис", random.nextInt(3) + 1);

  hospital.processRequest(criticalPatient);
  // hospital.processRequest(nonCriticalPatient);
}
