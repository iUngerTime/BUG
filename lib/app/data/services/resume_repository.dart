import 'package:bug/app/data/models/resume.dart';

abstract class ResumeRepository {
  Future<Resume> getResume();
}
