import "package:flutter/material.dart";

class SeriesItem {
  final String name;
  final String genre;
  final String description;
  final IconData icon;

  const SeriesItem({
    required this.name,
    required this.genre,
    required this.description,
    required this.icon,
  });
}

const List<SeriesItem> seriesList = [
  SeriesItem(
    name: "Stranger Things",
    genre: "Sci-Fi / Horor • 4 sezone",
    description: "Grupa djece otkriva nadprirodne misterije i tajne eksperimente u svom gradu.",
    icon: Icons.tv,
  ),
  SeriesItem(
    name: "Breaking Bad",
    genre: "Kriminalistička drama • 5 sezona",
    description: "Profesor kemije počinje proizvoditi ilegalne supstance kako bi novcem osigurao obitelj.",
    icon: Icons.local_fire_department,
  ),
  SeriesItem(
    name: "The Witcher",
    genre: "Fantastika • 3 sezone",
    description: "Mutirani lovac na čudovišta putuje kontinentom u potrazi za svojim mjestom u svijetu.",
    icon: Icons.flash_on,
  ),
  SeriesItem(
    name: "Friends",
    genre: "Komedija • 10 sezona",
    description: "Zabavne zgode i nezgode šestero prijatelja koji žive u New Yorku.",
    icon: Icons.tag_faces,
  ),
  SeriesItem(
    name: "The Office",
    genre: "Komedija • 9 sezona",
    description: "Prikaz svakodnevnog, urnebesnog života zaposlenika u uredu.",
    icon: Icons.business_center,
  ),
];