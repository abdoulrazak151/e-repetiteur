import 'package:e_repetiteur/model/Matiere.dart';
import 'package:e_repetiteur/model/Repetiteur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Repetiteur> repetiteurs=[
    Repetiteur(id:"rrrr",nom:"rrr",prenom:"",telephone: "", age: "34")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon:Icon(
        Icons.menu,
            color:Colors.deepOrangeAccent
        )

        ),
        title:  Row(
          children: [
            SizedBox(
              width: 100,
              child: Text("Accueil",
                  style:TextStyle(
                      color:Colors.deepOrangeAccent
                  )),
            ),
          ],
        ),

        actions: [

          GestureDetector(
            onTap:(){
              print("ok");
            },
            child: Padding(
              padding: const EdgeInsets.only(right:10.0, top: 3.0, bottom:3.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color:Colors.deepOrangeAccent,
                    width: 2
                  )
                ),
                child: Image(
                  height: 40,
                  width: 45,
                  image: AssetImage("assets/images/anim0.jpg"),
                ),
              ),
            ),
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Container(
          color:Colors.grey[200],
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:8.0, right:8.0, top:20.0, bottom: 20.0),
                child: Form(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:"matière, domaine, localite...",
                      filled:true,
                      fillColor:Colors.white,
                      border: outlinedInputBorder,
                      enabledBorder:outlinedInputBorder,
                      focusedBorder: outlinedInputBorder,
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12),
                          child: SvgPicture.asset("assets/icons/Search.svg")),
                      suffixIcon:Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          height: 48,
                            width: 48,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary:Colors.green,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))
                            ),
                            child: SvgPicture.asset("assets/icons/Filter.svg"),
                          ),
                        ),
                      )
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Text("Matières et domaines"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                      MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Tous les encadreurs et répétiteurs"),
              // Container(
              //   child: GridView.count(
              //     crossAxisCount: 3,
              //     children: [
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //       MatiereCard(matiere: Matiere(id:"dd", titre: "dd", repetiteurs: repetiteurs)),
              //     ],
              //   ),
              // )


            ],
          ),
        ),

      )
    );
  }
}

class MatiereCard extends StatelessWidget {
  const MatiereCard({
    Key? key,
    required this.matiere
  }) : super(key: key);
  final Matiere matiere;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                Icons.abc
              ),
              Text(
                "Maths"
              )
            ],
          ),
        ),
      ),
    );
  }
}

const OutlineInputBorder outlinedInputBorder=OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide.none
);
