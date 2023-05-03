import 'package:flutter/material.dart';

class Doodle {
  final String name;
  final String time;
  final String content;
  final String doodle;
  final Color iconBackground;
  final Icon icon;
  const Doodle(
      {this.name,
      this.time,
      this.content,
      this.doodle,
      this.icon,
      this.iconBackground});
}

const List<Doodle> doodles = [
  Doodle(
      name: "You were born 🥹",
      time: "4 Mei 1999",
      content:
          "Mengucapkan terimakasih banyak terhadap ortu selvi yang telah melahirkan a kind hearted creature ini",
      doodle:
          "https://thumbs.dreamstime.com/z/broken-egg-shell-yellow-plastic-duck-white-background-cracked-open-168023935.jpg",
      icon: Icon(Icons.sentiment_satisfied_rounded, color: Colors.white),
      iconBackground: Colors.deepPurpleAccent),
  Doodle(
      name: "Graduated High School",
      time: "Somewhere around 2017",
      content:
          "Kata orang masa SMA adalah masa terindah, tapi kenapa kamu lebih pilih masa SMP?",
      doodle:
          "https://asset-a.grid.id/crop/0x0:0x0/x/photo/2022/08/05/nikkkjpg-20220805095857.jpg",
      icon: Icon(
        Icons.menu_book,
        color: Colors.white,
      ),
      iconBackground: Colors.redAccent),
  Doodle(
      name: "Joining Ubaya",
      time: "Still at 2017",
      content:
          "It might be your best decision. Because here you are more likely to grow up here. meet a lot of new people and some of them were glad to be your friends.",
      doodle:
          "https://i.ytimg.com/vi/IdJRpbYm7jA/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB3AUTtbOD6in33_Fq6si8fefT1Uw",
      icon: Icon(
        Icons.person_pin_rounded,
        color: Colors.black87,
        size: 32.0,
      ),
      iconBackground: Colors.yellow),
  Doodle(
      name: "Graduated from College",
      time: "2022",
      content:
          "You've been going through A LOT. Yet you prove yourself that you are sangat SETRONK and manage to finish it. Some friends you were made on the first year are now your new family. Then what next?, the real journey starts from here..",
      doodle:
          "https://instagram.fcgk6-2.fna.fbcdn.net/v/t51.2885-15/311216428_125634783433257_1637521591260603858_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fcgk6-2.fna.fbcdn.net&_nc_cat=109&_nc_ohc=10JNt-dc7BwAX-OEdzz&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=Mjk0NzQwNzIyMzQ3NTYzMjk1NA%3D%3D.2-ccb7-5&oh=00_AfB7h1Z4hGvlFJgCCaIfk_XpDrlIGlF07aasf92XkaYHGw&oe=64582EE2&_nc_sid=1527a3",
      icon: Icon(
        Icons.school,
        color: Colors.black87,
      ),
      iconBackground: Colors.amber),
  Doodle(
      name: "Expanding your comfort zone",
      time: "2022",
      content:
          "As you told, most of girls in your hometown are all going married. You are slightly different, you have a goal to achieve. Far from friends and family is not going to be your reason to stop chasing your dream. I get inspired of what you do here",
      doodle: "https://img-9gag-fun.9cache.com/photo/anQ4nmq_460s.jpg",
      icon: Icon(
        Icons.data_exploration,
        color: Colors.white,
      ),
      iconBackground: Colors.green),
  Doodle(
      name: "Gabut di Sukabumi",
      time: "2023",
      content:
          "Karena gabutmu & akupun gabut akhirnya download Bumble lalu match hanya karena nama aku mie sedap. A blessing in disguise ngga sihh",
      doodle:
          "https://apakabaronline.com/wp-content/uploads/2020/12/v4-460px-Get-Rid-of-Mucus-Step-6-Version-3.jpg",
      icon: Icon(
        Icons.timer_outlined,
        color: Colors.white,
      ),
      iconBackground: Colors.indigo),
  Doodle(
      name: "Happy Birthday!",
      time: "4 Mei 2023",
      content:
          "The older you get the more quiet you become. As older you get life will humbles you, Kamu jadi kuat banget sekarang keren banget !!!!",
      doodle:
          "https://i.pinimg.com/originals/1c/12/4c/1c124ca2d0fa5b4bdb8b65b0da35be9e.jpg",
      icon: Icon(
        Icons.cake,
        color: Colors.white,
      ),
      iconBackground: Colors.pinkAccent),
];
