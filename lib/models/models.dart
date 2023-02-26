class DataModel {
  final String title;
  final String imageName;
  final String location;
  final String audio;
  DataModel(
    this.title,
    this.imageName,
    this.location,
    this.audio,
  );
}

List<DataModel> dataList = [
  DataModel("Chapter 1", "assets/images/arret1.jpg", "Porte de Pignerol",
      "assets/audio/audioEn/Chpt1.mp3"),
  DataModel("Chapter 2", "assets/images/arret2.jpg", 'Chemin de Ronde',
      "assets/audio/audioEn/Chpt1.mp3"),
  DataModel("Chapter 3", "assets/images/arret3.jpg", 'Chemin du Fort des Tetes',
      "assets/audio/audioEn/Chpt1.mp3"),
  DataModel("Chapter 4", "assets/images/arret4.jpg", "Rue du Pont d'Asfeld",
      "assets/audio/audioEn/Chpt1.mp3"),
  DataModel("Chapter 5", "assets/images/arret5.jpg", "Rue Domaine Chautard",
      "assets/audio/audioEn/Chpt1.mp3"),
  DataModel("Chapter 6", "assets/images/arret6.jpg", "Place d'Armes",
      "assets/audio/audioEn/Chpt1.mp3"),
  DataModel("Chapter 7", "assets/images/arret7.jpg", "Rue Mercerie",
      "assets/audio/audioEn/Chpt1.mp3"),
  DataModel("Chapter 8", "assets/images/arret8.jpg", "Avenue Vauban",
      "assets/audio/audioEn/Chpt1.mp3"),
  DataModel("Chapter 9", "assets/images/arret9.jpg", "Rue du Pont d'Asfeld",
      "assets/audio/audioEn/Chpt1.mp3"),
];
