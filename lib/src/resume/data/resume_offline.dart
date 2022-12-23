import 'package:BUG/src/resume/data/resume_repository.dart';
import 'package:BUG/src/resume/domain/education_details.dart';
import 'package:BUG/src/resume/domain/personal_details.dart';
import 'package:BUG/src/resume/domain/resume.dart';
import 'package:BUG/src/resume/domain/skills_category.dart';
import 'package:BUG/src/resume/domain/work_details.dart';

class OfflineResume implements ResumeRepository {
  @override
  Future<Resume> getResume() async {
    var personalInfo = PersonalDetails(
        address: 'Rainier, WA',
        phone: '(253) 229-8444',
        email: 'brenton.s.unger@live.com',
        gitHub: 'github.com/iungertime',
        linkedIn: 'linkedin.com/in/brenton-unger-ii',
        summary: '');

    var education = [
      EducationDetails(
          educationalOrg: 'Oregon Institute of Technology',
          startedAttendance: 'September 2017',
          endedAttendance: 'June 2021',
          location: 'Klamath Falls, OR',
          degreeGpa: '3.65',
          degreeType: 'Bachelor of Science',
          degreeMajor: 'Software Engineering Technology'),
      EducationDetails(
          educationalOrg: 'Clover Park Technical College',
          startedAttendance: 'September 2015',
          endedAttendance: 'May 2017',
          location: 'Lakewood, WA',
          degreeGpa: '4.0',
          degreeType: 'Associates (Unearned)',
          degreeMajor: 'Web Development')
    ];

    var skills = [
      SkillsCategory(
          skillCategoryName: 'Primary Languages',
          skills: ['C#', 'Dart', 'TypeScript']),
      SkillsCategory(
          skillCategoryName: 'Secondary Languages',
          skills: ['Python', 'C, C++', 'Java']),
      SkillsCategory(
          skillCategoryName: 'Mobile Frameworks',
          skills: ['Xamarin.Forms', 'Flutter', 'Native Android']),
      SkillsCategory(
          skillCategoryName: 'Database Frameworks',
          skills: ['Microsoft SQL Server', 'Firebase Firestore']),
      SkillsCategory(skillCategoryName: 'Web Development', skills: [
        'ASP.NET',
        'REST API',
        'Angular',
        'Node.Js',
        'Web Sockets',
        'Bootstrap'
      ]),
      SkillsCategory(skillCategoryName: 'Cloud Services', skills: [
        'AWS (EC2, S3, EBS)',
        'Firebase (Auth, Firestore, Remote Config)',
        'Docker'
      ]),
    ];

    var employment = [
      WorkDetails(
          jobTitle: 'Software Engineering Manager',
          companyName: 'Buildable',
          startDate: 'June 2022',
          endDate: 'Present',
          keyPoints: [
            'Managed upwards of 6 projects with value ranges from 150K to 600K+',
            'Manage 4 full-time employees and 2 contractors to delegate tasks and make general managerial decisions',
            'Be the face of consumer engineering department to manage the ideation, production, and maintenance phases of projects',
            'Select and affirm the techologies to be used in new projects as well as create the basic architecture',
            'Continue responsibilities of the "Software Engineering Lead" potions listed below'
          ]),
      WorkDetails(
          jobTitle: 'Software Engineering Lead',
          companyName: 'Buildable',
          startDate: 'March 2022',
          endDate: 'June 2022',
          keyPoints: [
            'Architected a rules engine with Stanford Health Center to faciliate hypertension medications recommendations. Uses automated integrations with Epic to collect and detect PHI data to use for recommendations. Deploys through GCP using Kubernetes.',
            'Work directly with clients to establish the scope of work and ascertain the feature list and implementation specifications.',
          ]),
      WorkDetails(
          jobTitle: 'Junior Software Engineer',
          companyName: 'Buildable',
          startDate: 'April 2021',
          endDate: 'March 2022',
          keyPoints: [
            'Implemented full stack features into Angular web apps',
            'Built and deployed native Android and FireTV appliciations that handle video content distribution',
            'Created custom OAuth workflows to integrate social media connections (Facebook, Google, Apple) into an exsiting authentication stack'
          ]),
      WorkDetails(
          jobTitle: 'Software Design Patterns TA',
          companyName: 'Oregon Institute of Technology',
          startDate: 'October 2020',
          endDate: 'December 2020',
          keyPoints: [
            'Explain core concepts and answer clarifying questions students have about common design patterns in software industry',
            'Review and critique code for students',
            'Check implementations follow the correct pattern'
          ])
    ];

    return Resume(
        personalInfo: personalInfo,
        education: education,
        skills: skills,
        employmentHistory: employment);
  }
}
