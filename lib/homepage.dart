import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imagePosts = [
    "Images/1.png",
    "Images/2.png",
    "Images/3.png",
    "Images/4.png",
    "Images/5.png",
    "Images/6.png",
    "Images/7.png",
    "Images/8.png",
  ];

  Future<void> onrefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "Images/logo.png",
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger_outline_rounded),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onrefresh,
        child: SingleChildScrollView(
            child: Column(
          children: [
            //STORY
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 35,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Profile Name",
                          style: TextStyle(fontSize: 12, color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(),
            Column(
              children: List.generate(
                  8,
                  (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //HEADER POST
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: const CircleAvatar(
                                  radius: 12,
                                ),
                              ),
                              Text("Profile Name"),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert),
                              )
                            ],
                          ),
                          Image.asset(imagePosts[index]),
                          //footer post
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.chat_bubble_outline),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.label_outline),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(text: "Liked by"),
                                      TextSpan(
                                        text: " Profile Name",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: " and"),
                                      TextSpan(
                                        text: " others",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text: "Profile Name",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            " This is the most amazing picture ever uploaded on instagram.",
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "View all x Comments",
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
            )
          ],
        )),
      ),
    );
  }
}
