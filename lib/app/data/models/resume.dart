import 'package:bug/app/data/models/personal_details.dart';
import 'package:bug/app/data/models/education_details.dart';
import 'package:bug/app/data/models/skills_category.dart';
import 'package:bug/app/data/models/work_details.dart';

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
