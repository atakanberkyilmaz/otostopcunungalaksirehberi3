import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import '../firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    home: SearchScreen(),
  ));
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  String name = "";
  List<Map<String, dynamic>> data = [
    {
      'name': 'Mars',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Mars_-_August_30_2021_-_Flickr_-_Kevin_M._Gill.png/290px-Mars_-_August_30_2021_-_Flickr_-_Kevin_M._Gill.png',
      'location': 'Mars'
    },
    {
      'name': 'ISS Uzay İstasyonu',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/The_station_pictured_from_the_SpaceX_Crew_Dragon_1.jpg/800px-The_station_pictured_from_the_SpaceX_Crew_Dragon_1.jpg',
      'location': 'Uzay'
    },
    {
      'name': 'Plüton',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Pluto-01_Stern_03_Pluto_Color_TXT.jpg/450px-Pluto-01_Stern_03_Pluto_Color_TXT.jpg',
      'location': 'Plüton'
    },
    {
      'name': 'Evrenin Sonundaki Restoran',
      'image':
      '',
      'location': 'Evrenin Sonu'
    },
    {
      'name': 'Venüs',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/c/c7/PIA23791-Venus-RealAndEnhancedContrastViews-20200608_%28cropped%29.jpg',
      'location': 'Venüs'
    },
    {
      'name': 'Jupiter',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg/300px-Jupiter_and_its_shrunken_Great_Red_Spot.jpg',
      'location': 'Jupiter'
    },
    {
      'name': 'Sagittarius Takımyıldızı',
      'image':
      'https://media.istockphoto.com/id/525430193/tr/vekt%C3%B6r/sagittarius-constellation.jpg?s=612x612&w=0&k=20&c=VrHyxB3B_wp370CEBdz5Pov7U-yZnhvRjAfwlD6if9Y=',
      'location': 'Samanyolu Galaksisi'
    },
    {
      'name': 'Satürn',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Saturn_from_Cassini_Orbiter_%282004-10-06%29.jpg/800px-Saturn_from_Cassini_Orbiter_%282004-10-06%29.jpg',
      'location': 'Satürn'
    },

  ];

  addData() async {
    for (var element in data) {
      FirebaseFirestore.instance.collection('mekanlar').add(element);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Card(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search), hintText: 'Search...'),
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
              ),
            )),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('mekanlar').snapshots(),
          builder: (context, snapshots) {
            return (snapshots.connectionState == ConnectionState.waiting)
                ? Center(
              child: CircularProgressIndicator(),
            )
                : ListView.builder(
                itemCount: snapshots.data!.docs.length,
                itemBuilder: (context, index) {
                  var data = snapshots.data!.docs[index].data()
                  as Map<String, dynamic>;

                  if (name.isEmpty) {
                    return ListTile(
                      title: Text(
                        data['name'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        data['location'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data['image']),
                      ),
                    );
                  }
                  if (data['name']
                      .toString()
                      .toLowerCase()
                      .startsWith(name.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        data['name'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        data['location'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data['image']),
                      ),
                    );
                  }
                  return Container();
                });
          },
        ));
  }
}