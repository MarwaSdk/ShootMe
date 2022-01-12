// ignore_for_file: camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables
 /*-----------------------Arij flihi -------------------------------*/
import 'package:flutter/material.dart';
import 'package:myapp/photographer_details.dart';

class bestphotographs extends StatefulWidget {
  @override
  _bestphotographsState createState() => _bestphotographsState();
}

class _bestphotographsState extends State<bestphotographs> {
  var bestphotographs_list = [
    {
      "name": "Sadkaoui Marwa",
      "picture": "assets/images/b1.jpg",
      "price": 20,
      "email": "sadkaouimarwa@gmail.com",
      "description": "azertyuiopqsdfghjklmwxcvbnazertyuiopqsdfghjklmwxcvbn",
      "likes": 100,
      "followers": 50,
      "following": 20,
    },
    {
      "name": "Ghorbel Youcef",
      "picture": "assets/images/b2.jpg",
      "price": 120,
      "email": "Ghorbel_Youcef@gmail.com",
      "description": "azertyuiopqsd  fghjklmwxcvbnazertyuiopqsdfghjklmwxcvbn",
      "likes": 100,
      "followers": 50,
      "following": 20,
    },
    {
      "name": "Flihi Arij",
      "picture": "assets/images/b3.jpg",
      "price": 450,
      "email": "Flihi_Arij@gmail.com",
      "description": "azertyuiopqsdf ghjklmwxcvbnaze rtyuiopqsdfghjklmwxcvbn",
      "likes": 100,
      "followers": 50,
      "following": 20,
    },
    {
      "name": "Oualha Mariem",
      "picture": "assets/images/b4.jpg",
      "price": 320,
      "email": "Oualha_Mariem@gmail.com",
      "description": "azertyuiopqsdfghjklmwxcvbnazertyuiopqsdfghjklmwxcvbn",
      "likes": 100,
      "followers": 50,
      "following": 20,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: bestphotographs_list.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return single_photograph(
              photograph_name: bestphotographs_list[index]["name"],
              photograph_picture: bestphotographs_list[index]["picture"],
              photograph_price: bestphotographs_list[index]["price"],
              photograph_email: bestphotographs_list[index]["email"],
              photograph_description: bestphotographs_list[index]
                  ["description"],
              photograph_likes: bestphotographs_list[index]["likes"],
              photograph_followers: bestphotographs_list[index]["followers"],
              photograph_following: bestphotographs_list[index]["following"]);
        });
  }
}

class single_photograph extends StatelessWidget {
  final photograph_name;
  final photograph_price;
  final photograph_picture;
  final photograph_email;
  final photograph_description;
  final photograph_likes;
  final photograph_followers;
  final photograph_following;

  single_photograph({
    this.photograph_name,
    this.photograph_picture,
    this.photograph_price,
    this.photograph_email,
    this.photograph_description,
    this.photograph_likes,
    this.photograph_followers,
    this.photograph_following,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: photograph_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PhotographerDetails(
                        PhotographerDetails_name: photograph_name,
                        PhotographerDetails_price: photograph_price,
                        PhotographerDetails_picture: photograph_picture,
                        PhotographerDetails_email: photograph_email,
                        PhotographerDetails_description: photograph_description,
                        PhotographerDetails_followers: photograph_followers,
                        PhotographerDetails_following: photograph_following,
                        PhotographerDetails_likes: photograph_likes,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(
                        photograph_name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    photograph_picture,
                    height: 50,
                    width: 50,
                    
                  )),
            ),
          )),
    );
  }
}
