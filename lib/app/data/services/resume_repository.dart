import 'package:BUG/app/data/models/resume.dart';

abstract class ResumeRepository {
  Future<Resume> getResume();
}
