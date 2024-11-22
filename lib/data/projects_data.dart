class ProjectsData {
  final String imagePath;
  final String title;

  ProjectsData({required this.imagePath, required this.title});
}

const imagePath = "images/projects/";

List<ProjectsData> threeDProjectData = <ProjectsData>[
  ProjectsData(
    imagePath: "${imagePath}ThreeD-1.jpg", 
    title: "San Andreas Opening Scene",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-2.jpg", 
    title: "Lamborghini Aventador Design",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-3.jpg", 
    title: "Living Room Interior Design",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-4.jpg", 
    title: "Botanic Heaven",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-5.jpg", 
    title: "Scandinavian Bedroom Scene",
  ),
];

List<ProjectsData> uxProjectData = <ProjectsData>[
  ProjectsData(
    imagePath: "${imagePath}UX-1.png", 
    title: "Instagram Redesign",
  ),
  ProjectsData(
    imagePath: "${imagePath}UX-2.png", 
    title: "Marvel-Watch",
  ),
  ProjectsData(
    imagePath: "${imagePath}UX-3.png", 
    title: "Tune-in Music Player",
  ),
];

List<ProjectsData> programmingData = <ProjectsData> [
  ProjectsData(
    imagePath: "${imagePath}UX-2.png", 
    title: "Marvel-Watch",
  ),
];