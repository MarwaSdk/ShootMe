/*-----------------------Marwa Sadkaoui -------------------------------*/
import 'package:flutter/material.dart';
import 'package:myapp/Search/HomeScreen.dart';
import 'Api_service.dart';
import 'user_model.dart';

class SearchUser extends SearchDelegate {
  FetchUserList _userList = FetchUserList();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    var futureBuilder = FutureBuilder<List<Userlist>>(
        future: _userList.getuserList(query: query),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<Userlist>? data = snapshot.data;
          return ListView.builder(
              itemCount: data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/b1.jpg",
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              
                              '${data?[index].name}',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${data?[index].email}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(children: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.location_city),
                                onPressed: () {},
                                iconSize: 20,
                              ),
                              Text(
                                '${data?[index].address!.city}',
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ])
                          ])
                    ],
                  ),
                );
              });
        });
    return futureBuilder;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search Photohrapher'),
    );
  }
}
