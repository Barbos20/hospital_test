import 'dart:math';
import 'package:hospital_test/hospital_test.dart';

void main() {
  var random = Random();
  List<PersonDoctor> doctorList = [
    PersonDoctor("Иван Иванов", "Главврач", 3),
    PersonDoctor("Мария Сидорова", "Врач", 2),
    PersonDoctor("Татьяна Николаевна", "Медсестра", 1),
  ];

  List<Patient> patient = [
    Patient("Петр Петров", random.nextInt(3) + 1),
    Patient("Анна Сидорова", random.nextInt(3) + 1),
    Patient("Евгения Лабода", random.nextInt(3) + 1),
  ];

  var hospital = Hospital(doctorList);

  hospital.processRequests(patient);
}
