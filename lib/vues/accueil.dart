import 'package:e_repetiteur/vues/inscription_parent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  final int numPages=4;
  final PageController _pageController=PageController(initialPage: 0);
   int _currentPage=0;
   List<Widget> _buildPageIndicator(){
     List<Widget> list=[];
     for(int i=0; i< numPages; i++){
       list.add(i==_currentPage?_indicator(true):_indicator(false));
     }
     return list;
   }
   Widget _indicator(bool isActive){
     return AnimatedContainer(
       duration: Duration(milliseconds:150),
       margin: EdgeInsets.symmetric(horizontal:8.0),
       height:8.0,
       width: isActive?24.0:16.0,
       decoration:BoxDecoration(
         color: isActive?Colors.white:Color(0xFF7B51D3),
         borderRadius: BorderRadius.all(Radius.circular(12)),
       )
     );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end:Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFFFFFFF1),
                Color(0xFFE8BD94),
                Color(0xFFEC7422),
                Color(0xFFEC7510)
              ]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.stretch ,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                        'Ignorer',
                        style:TextStyle(
                          color:   Color(0xFFEC7510),
                          fontSize: 20.0,

                        )
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (page){
                      setState(() {
                        _currentPage=page;
                      });
                    },
                    children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Center(
                                  child: Image(
                                    image: AssetImage(
                                      'assets/gif/anim1.gif',
                                    ),
                                    height: 300,
                                      width: 300,
                                  ),
                                ),
                                SizedBox(height: 30.0,),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Center(
                                    child: Text(
                                        "Envie de trouver un repetiteur ou un prof de maison",
                                        style:TextStyle(
                                        color:Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.bold,
                                          fontSize:16.0
                                    )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Pour vos enfants ou pour vos enfants, nous vous aiderons à  le trouver "
                                  ),
                                )
                              ],
                            ),
                          ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/gif/anim0.gif',
                                ),
                                height: 300,
                                width: 300,
                              ),
                            ),
                            SizedBox(height: 30.0,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Center(
                                child: Text(
                                    "Envie de trouver un repetiteur ou un prof de maison",
                                    style:TextStyle(
                                        color:Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize:16.0
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  "Pour vos enfants ou pour vos enfants, nous vous aiderons à  le trouver "
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/gif/anim2.gif',
                                ),
                                height: 300,
                                width: 300,
                              ),
                            ),
                            SizedBox(height: 30.0,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Center(
                                child: Text(
                                    "Envie de trouver un repetiteur ou un prof de maison",
                                    style:TextStyle(
                                        color:Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontSize:16.0
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  "Pour vos enfants ou pour vos enfants, nous vous aiderons à  le trouver "
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0, left:10.0, right: 10.0, bottom: 10.0),
                        child: Container(

                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCE9A70),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Entrez vos identifiants",
                                      style:TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16.0,
                                        color:Colors.white
                                      )
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0, right:8.0, top:50.0),
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
                                            keyboardType: TextInputType.text,

                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "votre mot de passe"
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height:5),
                                      Row(
                                        children: [
                                          Text("vous oublié votre mot de passe? "),
                                          TextButton(
                                            onPressed: (){},
                                            child: Text("cliquez ici"),
                                          )
                                        ],
                                      ), SizedBox(height: 10,),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color:Colors.white),
                                        ),
                                        width: MediaQuery.of(context).size.width,
                                          child: OutlinedButton(
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Color(
                                                  0xff779591))
                                            ),
                                              onPressed: (){},
                                              child: Padding(
                                                padding: const EdgeInsets.all(12.0),
                                                child: Text(
                                                    "Connexion",
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
                                            "vous vous n'êtes pas inscris,"
                                          ),
                                          TextButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>InscriptionParent()));
                                              },
                                              child: Text(
                                                "Inscrivez-vous"
                                              )
                                          )
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                              )
                              // Center(
                              //   child: Image(
                              //     image: AssetImage(
                              //       'assets/gif/anim2.gif',
                              //     ),
                              //     height: 300,
                              //     width: 300,
                              //   ),
                              // ),
                              // SizedBox(height: 30.0,),
                              // Padding(
                              //   padding: EdgeInsets.symmetric(horizontal: 8.0),
                              //   child: Center(
                              //     child: Text(
                              //         "Envie de trouver un repetiteur ou un prof de maison",
                              //         style:TextStyle(
                              //             color:Color(0xFFFFFFFF),
                              //             fontWeight: FontWeight.bold,
                              //             fontSize:16.0
                              //         )
                              //     ),
                              //   ),
                              // ),
                              // Padding(
                              //   padding: EdgeInsets.all(8.0),
                              //   child: Text(
                              //       "Pour vos enfants ou pour vos enfants, nous vous aiderons à  le trouver "
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                (_currentPage!=numPages-1 )?Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomRight,
                    child: TextButton(
                      onPressed:(){
                        _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                              "Suivant",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize:16.0
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Icon(Icons.arrow_forward,
                          color:Colors.white,
                            size:20
                          ),

                        ],
                      ),
                    ),
                  ),
                ):Text(''),
              ],
            ),
          ),
        ),
      ),

      // bottomSheet:_currentPage==numPages -1?
      //     Container(
      //       height: 100,
      //       width: double.infinity,
      //
      //       decoration: BoxDecoration(
      //         color:Colors.white,
      //         borderRadius: BorderRadius.only(topRight: Radius.circular(20))
      //       ),
      //       child:GestureDetector(
      //         onTap:(){},
      //         child: Center(
      //           child:Padding(
      //             padding:EdgeInsets.only(bottom: 20.0),
      //             child: Text(
      //               "Commencer",
      //               style:TextStyle(
      //                 color:Color(0xFF5B16D0),
      //                 fontSize:20.0,
      //                 fontWeight:FontWeight.bold
      //               )
      //             ),
      //           )
      //         ),
      //       )
      //     ):Text('')

    );
  }
}
