import 'package:flutter/material.dart';
import 'package:insta_clone/homepage.dart';
import 'package:insta_clone/searchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
          elevation: 0,
          color: Colors.white,
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? SearchPage() : HomePage(),
      bottomNavigationBar: BottomAppBar(
          height: 50,
          child: Row(
            children: [
              Expanded(
                  child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: currentPage == 0
                      ? Color.fromARGB(255, 18, 34, 83)
                      : Color.fromRGBO(40, 40, 40, 1),
                  size: 35,
                ),
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
              )),
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: currentPage == 1
                        ? Color.fromARGB(255, 18, 34, 83)
                        : Color.fromRGBO(40, 40, 40, 1),
                    size: 35,
                  ),
                  onPressed: () {
                    setState(() {
                      currentPage = 1;
                    });
                  },
                ),
              ),
              Expanded(
                  child: IconButton(
                icon: const Icon(
                  Icons.live_tv_sharp,
                  size: 35,
                ),
                onPressed: () {},
              )),
              Expanded(
                  child: IconButton(
                icon: const Icon(
                  Icons.notifications,
                  size: 35,
                ),
                onPressed: () {},
              )),
              Expanded(
                  child: IconButton(
                icon: const Icon(Icons.person, size: 35),
                onPressed: () {},
              )),
            ],
          )),
    );
  }
}
