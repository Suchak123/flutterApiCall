import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personalapp/common/View_utils/common_card.dart';
import 'package:personalapp/repository/sample_repo.dart';
import 'model/sample_model.dart';
import 'package:personalapp/model/sample_model.dart';


class Home extends StatefulWidget {

  Home({super.key});

  List<Superheros>? superheros;

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  List<Superheros>? superheros;

  @override
  void initState() {
    getApiData();
    super.initState();
  }

  void getApiData() async {
    final sampleRepo = SampleRepo();
    sampleRepo.sampleApiCall();
    final superHerosList = await sampleRepo.sampleApiCall();
    // print(superHerosList);
    setState(() {
      superheros = superHerosList;
    });
  }


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          superheros != null
              ? ListView.builder(
            shrinkWrap: true,
            itemCount: superheros!.length,
            itemBuilder: (context, index) {
              final hero = superheros![index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 3,
                  child: ListTile(
                    title: Text(hero.name ?? ''),
                    subtitle: Text(hero.power ?? ''),
                    leading: Image.network(hero.url ?? '', height: 50, width: 50,),
                      

                    // Add more details as needed
                  ),
                ),
              );
            },
          )
              : Center(
            child: CircularProgressIndicator(),
          ),




    ],),
    );
  }
}
