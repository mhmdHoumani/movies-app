import 'dart:convert';

import 'package:first_project/Model/PostModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsingMap extends StatefulWidget {
  const JsonParsingMap({Key? key}) : super(key: key);

  @override
  _JsonParsingMapState createState() => _JsonParsingMapState();
}

class _JsonParsingMapState extends State<JsonParsingMap> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Future<PostList> data = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PODO"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot<PostList> snapshot) {
              List<Post> allPosts;
              if (snapshot.hasData) {
                allPosts = snapshot.data!.posts;
                return createListView(allPosts, context);
                //return Text("${allPosts[0].name}");
              } else {
                print("The data of the snapshot is null...".toUpperCase());
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }

  Widget createListView(List<Post> data, BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    "${data[index].name}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "serif",
                    ),
                  ),
                  subtitle: Text("${data[index].body}"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 35,
                    child: Text("${data[index].id}"),
                  ),
                ),
                Divider(height: 5, color: Colors.grey)
              ],
            );
          }),
    );
  }

  Future<PostList> getData() {
    String url = "https://jsonplaceholder.typicode.com/comments";
    Network network = Network(url);
    return network.loadPosts();
  }
}

class Network {
  final String url;

  Network(this.url);

  Future<PostList> loadPosts() async {
    String uri = Uri.encodeFull(url);
    final response = await get(Uri.parse(uri));
    if (response.statusCode == 200) {
      return PostList.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to get posts...");
    }
  }
}