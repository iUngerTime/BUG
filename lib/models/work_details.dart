class WorkDetails {
  final String jobTitle;
  final String companyName;
  final String startDate;
  final String endDate;
  final List<String> keyPoints;

  WorkDetails(
      {this.jobTitle = '',
      this.companyName = '',
      this.startDate = '',
      this.endDate = '',
      this.keyPoints = const []});
}
