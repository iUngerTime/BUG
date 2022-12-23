import 'package:BUG/models/resume.dart';

abstract class ResumeRepository {
  Future<Resume> getResume();
}
