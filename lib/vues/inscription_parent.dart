import 'package:e_repetiteur/vues/home.dart';
import 'package:flutter/material.dart';
class InscriptionParent extends StatefulWidget {
  const InscriptionParent({Key? key}) : super(key: key);

  @override
  State<InscriptionParent> createState() => _InscriptionParentState();
}

class _InscriptionParentState extends State<InscriptionParent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          color:Colors.grey[200],
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top:50.0, left: 10, right: 10, bottom: 10),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Inscription",
                      style:TextStyle(
                        color:Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                          fontSize:20
                      )
                    ),
                  ),

                ),
                  Text(
                    "vous avez besoin  d'un répétiteur pour vos enfants, d'un encadreur pour vous ou pour vos enfants\n\n Veuillez renseigner vos informations de base pour nous aider à vous trouvez facilement un encadreur ou un répétiteur pour vous ou pour vos enfants",
                    style: TextStyle(
                      color: Color(0xff07072b),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(top:20, left: 10,  right: 10),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration:BoxDecoration(
                                    color:Colors.grey[200],
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "votre Nom"
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                decoration:BoxDecoration(
                                    color:Colors.grey[200],
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "votre prénom"
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                decoration:BoxDecoration(
                                    color:Colors.grey[200],
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "votre Numéro de téléphone"
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                decoration:BoxDecoration(
                                    color:Colors.grey[200],
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "entrer votre addresse"
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                decoration:BoxDecoration(
                                    color:Colors.grey[200],
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.text,

                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "votre mot de passe"
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                decoration:BoxDecoration(
                                    color:Colors.grey[200],
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.text,

                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "votre mot de passe"
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 20,),
                              Container(
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    border: Border.all(color:Colors.white),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: OutlinedButton(
                                      style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Color(
                                              0xff779591))
                                      ),
                                      onPressed: (){
                                        // DialogAccordInscription();
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "Inscription",
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                      )
                                  )
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text(
                                      "vous êtes dèjà inscris ?"
                                  ),
                                  TextButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                          "Connectez-vous"
                                      )
                                  )
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class DialogAccordInscription extends StatefulWidget {
  const DialogAccordInscription({Key? key}) : super(key: key);

  @override
  State<DialogAccordInscription> createState() => _DialogAccordInscriptionState();
}

class _DialogAccordInscriptionState extends State<DialogAccordInscription> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            margin:EdgeInsets.symmetric(
              horizontal:10
            ),
            child: Text("Accord et terme"),
          ),
          Column(
            children: [
              Text(
                "vos informations et celles de vos enfants que vous allez nous fournir ne seront à aucun cas exposé à des fins ne nécéssitant votre accord. \n nous allons utiliser les informations fournies pour vous trouver falicement le repetiteur adéquat que vous cherchez. En cochant la case ci-dessous puis cliquant sur accorder, vous nous donnez l'autorisation de sauvegarder vos données à des fins de recherche de repétiteur rapide",
                style:TextStyle(
                  color:Colors.blue,
                  fontSize:12,
                  fontWeight:FontWeight.w200
                )

              )
            ],
          )

        ],
      ),
    );
  }
}

