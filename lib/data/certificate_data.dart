class CertificateData {
  final String certificateGiver;
  final String certificateTopic;
  final String title;
  final String certificateAuthority;
  final String validityDate;

  CertificateData({
    required this.certificateGiver,
    required this.certificateTopic,
    required this.title,
    required this.certificateAuthority,
    required this.validityDate,
  });
}

List<CertificateData> certificateData = <CertificateData>[
  CertificateData(
    certificateGiver: "nptel.png", 
    certificateTopic: "ml.png", 
    title: "Introduction to Machine Learning", 
    certificateAuthority: "NPTEL", 
    validityDate: "September 2023",
  ),
  CertificateData(
    certificateGiver: "nptel.png", 
    certificateTopic: "dbms.png", 
    title: "Introduction to DBMS", 
    certificateAuthority: "NPTEL", 
    validityDate: "March 2024",
  ),
  CertificateData(
    certificateGiver: "coincent.png", 
    certificateTopic: "ml.png", 
    title: "Introduction to AI with Python", 
    certificateAuthority: "Coincent AI", 
    validityDate: "July 2022",
  ),
  CertificateData(
    certificateGiver: "udemy.png", 
    certificateTopic: "python.png", 
    title: "Introduction to Python Programming", 
    certificateAuthority: "Udemy", 
    validityDate: "September 2023",
  ),
  CertificateData(
    certificateGiver: "hackerrank.png", 
    certificateTopic: "python.png", 
    title: "Python (Basic)", 
    certificateAuthority: "HackerRank", 
    validityDate: "October 2024",
  ),
  CertificateData(
    certificateGiver: "hackerrank.png", 
    certificateTopic: "mysql.png", 
    title: "MySQL (Basic)", 
    certificateAuthority: "HackerRank", 
    validityDate: "October 2024",
  )
];
