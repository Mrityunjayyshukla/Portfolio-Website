class ExperienceData {
  final String title;
  final String time;
  final String description;


  ExperienceData({required this.title, required this.time, required this.description});
}

List<ExperienceData> experienceData = <ExperienceData>[
  ExperienceData(
    title: "Project Intern | GlobalLogic", 
    time: "Jul 2024 - Sep 2024", 
    description: "Mastering in Generative AI (GenAI) and Large Language Models (LLM).\nDeveloping a chatbot with OpenAI during training, designed to enhance user interaction and support potential customer engagement initiatives, leading to a 25% improvement in response quality.\nDriving project milestones through documentation and analysis.",
  ),
  ExperienceData(
    title: "Android Developer | Visanka Technologies", 
    time: "Dec 2023 - Feb 2023", 
    description: "Engineered the front-end of a travel booking app using Flutter and Dart.\nTeamed up with UI/UX designers to ensure optimized functionality and enhanced usability.\nBuilt custom widgets and optimized code, reducing app load time by 2-5 seconds and improving user  satisfaction by 30-35%.",
  ),
  ExperienceData(
    title: "IT Infra Trainee | iSON Technologies", 
    time: "Jun 2023 - Dec 2023", 
    description: "Specialized in Application Management, Infrastructure Management, and Service Management.\nAssisted with server configuration, network management, and software deployment.\nGained hands-on experience in IT service processes, developing a foundational understanding of service  efficiency improvements.",
  ),
];