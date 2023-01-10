import 'package:bug/app/data/models/education_details.dart';
import 'package:bug/app/data/models/resume.dart';
import 'package:bug/app/data/models/skills_category.dart';
import 'package:bug/app/data/services/resume_offline.dart';

class SkillsController {
  late List<SkillsCategory> _skills;
  late List<EducationDetails> _education;

  SkillsController(Resume resume) {
    _skills = resume.skills;
    _education = resume.education;
  }

  List<SkillsCategory> getSkills() {
    return _skills;
  }

  List<EducationDetails> getEducationDetails() {
    return _education;
  }

  static Future<SkillsController> init() async {
    OfflineResume offlineResume = OfflineResume();
    Resume personalResume = await offlineResume.getResume();

    SkillsController ctrl = SkillsController(personalResume);

    return ctrl;
  }
}
