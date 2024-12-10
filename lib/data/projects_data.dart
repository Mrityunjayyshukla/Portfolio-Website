class ProjectsData {
  final String imagePath;
  final String title;
  final String link;

  ProjectsData({required this.imagePath, required this.title, required this.link});
}

const imagePath = "assets/images/projects/";

List<ProjectsData> threeDProjectData = <ProjectsData>[
  ProjectsData(
    imagePath: "${imagePath}ThreeD-1.jpg", 
    title: "San Andreas Opening Scene",
    link: "https://www.artstation.com/artwork/KrGrER",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-2.jpg", 
    title: "Lamborghini Aventador Design",
    link: "https://www.artstation.com/artwork/lxv11J",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-3.jpg", 
    title: "Living Room Interior Design",
    link: "https://www.artstation.com/artwork/d0qwVX",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-4.jpg", 
    title: "Botanic Heaven",
    link: "https://www.artstation.com/artwork/xJkr5R",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-5.jpg", 
    title: "Scandinavian Bedroom Scene",
    link: "https://www.artstation.com/artwork/6bBbPO0",
  ),
];

List<ProjectsData> uxProjectData = <ProjectsData>[
  ProjectsData(
    imagePath: "${imagePath}UX-1.png", 
    title: "Instagram Redesign",
    link: "https://www.behance.net/gallery/138049823/Instagram-Concept-UI",
  ),
  ProjectsData(
    imagePath: "${imagePath}UX-2.png", 
    title: "Marvel-Watch",
    link: "https://www.behance.net/gallery/160989919/Marvel-Watch",
  ),
  ProjectsData(
    imagePath: "${imagePath}UX-3.png", 
    title: "Tune-in Music Player",
    link: "https://www.behance.net/gallery/123933397/Tune-In-(Music-Player)",
  ),
];

List<ProjectsData> programmingData = <ProjectsData> [
  ProjectsData(
    imagePath: "${imagePath}UX-2.png", 
    title: "Marvel-Watch",
    link: "https://github.com/Mrityunjayyshukla/marvel-watch",
  ),
];