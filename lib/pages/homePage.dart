import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: const Text(
                "facebook",
                style: TextStyle(
                    fontFamily: "klavika-bold.otf",
                    fontSize: 39,
                    color: Colors.blue,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 10, right: 20, left: 20),
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200]),
                      child: const TextField(
                          decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.grey),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Search")),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Icon(Icons.camera_alt_outlined,
                      color: Colors.grey[800], size: 30)
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "Stories",
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w900,
                                fontSize: 24),
                          ),
                          const Text("See Archive")
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            makeStory(
                                storyImage:
                                    "lib/assets/images/story/Story1.webp",
                                userImage:
                                    "lib/assets/images/profilePics/Profile1.jpeg",
                                userName: "Alok Bhandari"),
                            makeStory(
                                storyImage:
                                    "lib/assets/images/story/Story2.webp",
                                userImage:
                                    "lib/assets/images/profilePics/Profile2.jpeg",
                                userName: "Mukul Giri"),
                            makeStory(
                                storyImage:
                                    "lib/assets/images/story/Story3.webp",
                                userImage:
                                    "lib/assets/images/profilePics/Profile3.jpeg",
                                userName: "Ujjwal Agrawal"),
                            makeStory(
                                storyImage:
                                    "lib/assets/images/story/Story4.webp",
                                userImage:
                                    "lib/assets/images/profilePics/Profile4.jpeg",
                                userName: "Priyanshu Pokhriyal"),
                            makeStory(
                                storyImage:
                                    "lib/assets/images/story/Story5.webp",
                                userImage:
                                    "lib/assets/images/profilePics/Profile5.jpeg",
                                userName: "Sagar Mamgain"),
                            makeStory(
                                storyImage:
                                    "lib/assets/images/story/Story6.webp",
                                userImage:
                                    "lib/assets/images/profilePics/Profile6.jpeg",
                                userName: "Darshan Raval")
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      makeFeed(
                        userName: "Mukul Giri",
                        userImage:
                            "lib/assets/images/profilePics/Profile2.jpeg",
                        feedTime: "1 hr ago",
                        feedText:
                            "Hey Everyone, Mukul this side. A BSC Nursing Student!",
                        feedImage: "lib/assets/images/story/Story2.webp",
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.4 / 2,
      child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(storyImage), fit: BoxFit.cover)),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.2)
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: AssetImage(userImage), fit: BoxFit.cover)),
                ),
                Text(
                  userName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                )
              ],
            ),
          )),
    );
  }
}

Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(userImage), fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.4),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        feedTime,
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      )
                    ],
                  ),
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz, size: 20, color: Colors.grey[600]),
            )
          ],
        ),
        const SizedBox(height: 20),
        Text(feedText, style: TextStyle(fontSize: 13, color: Colors.grey[800])),
        const SizedBox(height: 20),
        Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(feedImage), fit: BoxFit.cover),
            )),
        const SizedBox(height: 20),
        Row(
          children: [
            Row(
              children: [
                makeLike(),
                Transform.translate(offset: Offset(-6, 0), child: makeLove())
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget makeLike() {
  return Container(
    width: 22,
    height: 22,
    decoration: BoxDecoration(
      color: Colors.blue,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    child: const Center(
      child: Icon(Icons.thumb_up, size: 13, color: Colors.white),
    ),
  );
}

Widget makeLove() {
  return Container(
    width: 22,
    height: 22,
    decoration: BoxDecoration(
      color: Colors.red,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    child: const Center(
      child: Icon(Icons.favorite, size: 13, color: Colors.white),
    ),
  );
}
// Widget makeLikeButton() {}
// Widget makeCommentButton() {}
// Widget makeShareButton() {}
