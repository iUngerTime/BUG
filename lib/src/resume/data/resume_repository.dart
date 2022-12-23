import 'package:BUG/src/resume/domain/resume.dart';

abstract class ResumeRepository {
  Future<Resume> getResume();
}
