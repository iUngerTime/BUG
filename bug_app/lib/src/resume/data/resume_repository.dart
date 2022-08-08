import 'package:bug_app/src/resume/domain/resume.dart';

abstract class ResumeRepository {
  Future<Resume> getResume();
}
