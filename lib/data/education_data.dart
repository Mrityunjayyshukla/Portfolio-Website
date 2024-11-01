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
];