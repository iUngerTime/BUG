import 'package:BUG/src/resume/domain/education_details.dart';
import 'package:BUG/src/resume/domain/personal_details.dart';
import 'package:BUG/src/resume/domain/skills_category.dart';
import 'package:BUG/src/resume/domain/work_details.dart';

class Resume {
  final PersonalDetails personalInfo;
  final List<EducationDetails> education;
  final List<SkillsCategory> skills;
  final List<WorkDetails> employmentHistory;

  Resume(
      {required this.personalInfo,
      required this.education,
      required this.skills,
      required this.employmentHistory});
}
