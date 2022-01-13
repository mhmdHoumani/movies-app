import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsingSimple extends StatefulWidget {
  const JsonParsingSimple({Key? key}) : super(key: key);

  @override
  _JsonParsingSimpleState createState() => _JsonParsingSimpleState();
}

class _JsonParsingSimpleState extends State<JsonParsingSimple> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future data = getData();
    //data.then((value) => print(value[0]['name']));
    //print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Parsing"),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue[300]!.withOpacity(0.5),
      body: Container(
        alignment: Alignment.center,
        //margin: EdgeInsets.all(15),
        child: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return createListView(snapshot.data, context);
                //return Text(snapshot.data[0]['name']);
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }

  Future getData() async {
    String url = "https://jsonplaceholder.typicode.com/comments";
    Network network = Network(url);
    return network.fetchData();
  }

  Widget createListView(List<dynamic> data, BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    "${data[index]['name']}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "serif",
                    ),
                  ),
                  subtitle: Text("${data[index]['body']}"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 35,

                    child: Text("${data[index]['id']}"),
                  ),
                ),
                Divider(height: 5, color: Colors.grey)
              ],
            );
          }),
    );
  }
}

class Network {
  final String url;
  Network(this.url);
  Future fetchData() async {
    String uri = Uri.encodeFull(url);
    Response response = await get(Uri.parse(uri));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print("Response statusCode::::::::::: ${response.statusCode}");
    }
    return null;
  }
}
