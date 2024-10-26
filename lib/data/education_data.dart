class EducationData {
  final String title;
  final String institution;
  final String time;
  final String description;


  EducationData({required this.title, required this.institution, required this.time, required this.description});
}

List<EducationData> educationData = <EducationData>[
  EducationData(
    title: "B.Tech in Computer Science & Engineering", 
    institution: "SRM Institute of Science & Technology, Delhi NCR", 
    time: "Sep 2021 - present", 
    description: "CGPA : 9.04 /10",
  ),
  EducationData(
    title: "Class 12th in Science Stream", 
    institution: "DAV Public School, New Delhi", 
    time: "Apr 2020 - Mar 2021", 
    description: "Percentage: 87.6% (CBSE Board)",
  ),
  EducationData(
    title: "Class 10th", 
    institution: "DAV Public School, New Delhi", 
    time: "Apr 2018 - Mar 2019", 
    description: "Percentage: 92.6% (CBSE Board)",
  ),
];