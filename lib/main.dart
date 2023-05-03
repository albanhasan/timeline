import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'data.dart';

void main() => runApp(TimelinePage());

class TimelinePage extends StatefulWidget {
  TimelinePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  final PageController pageController =
      PageController(initialPage: 1, keepPage: true);
  int pageIx = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      timelineModel(TimelinePosition.Center),
      Card(
          margin: EdgeInsets.symmetric(vertical: 16.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          clipBehavior: Clip.antiAlias,
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  ButtonTheme(
                    // Tombol submit form contact
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        //method yang dijalankan ketika tombol di klik
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15))),
                      child: Text(
                        'Tambah',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Text("Swipe Kanan")
                ],
              )))
    ];

    return MaterialApp(
        home: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIx,
          onTap: (i) => pageController.animateToPage(i,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              label: "Your TImeline",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_people_rounded),
              label: "Kim han bin",
            )
          ]),
      appBar: AppBar(
        title: Text(widget.title ?? "Happy Birthday Selvi!"),
      ),
      body: PageView(
        onPageChanged: (i) => setState(() => pageIx = i),
        controller: pageController,
        children: pages,
      ),
    ));
  }

  timelineModel(TimelinePosition position) => Timeline.builder(
      itemBuilder: centerTimelineBuilder,
      itemCount: doodles.length,
      physics: position == TimelinePosition.Left
          ? ClampingScrollPhysics()
          : BouncingScrollPhysics(),
      position: position);

  TimelineModel centerTimelineBuilder(BuildContext context, int i) {
    final doodle = doodles[i];
    final textTheme = Theme.of(context).textTheme;
    return TimelineModel(
        Card(
          margin: EdgeInsets.symmetric(vertical: 16.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.network(doodle.doodle),
                const SizedBox(
                  height: 8.0,
                ),
                Text(doodle.time ?? "Name", style: textTheme.caption),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  doodle.name ?? "Name",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10, // <-- SEE HERE
                ),
                Text(
                  doodle.content ?? "Name",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
        ),
        position:
            i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
        isFirst: i == 0,
        isLast: i == doodles.length,
        iconBackground: doodle.iconBackground,
        icon: doodle.icon);
  }
}
