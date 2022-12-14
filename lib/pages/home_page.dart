import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/images.jpg'),
          fit: BoxFit.cover,
        )),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.5),
            Colors.black.withOpacity(.4),
            Colors.black.withOpacity(.1),
          ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadeInUpBig(
                delay: Duration(milliseconds: 400),
                child: const Text(
                  "Find the best parties near you.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
               FadeInUpBig(
                 delay: Duration(milliseconds: 500),
                 child: const Text(
                    "Let find you a party for your interes",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w800
                    ),
                    textAlign: TextAlign.start,
              ),
               ),

              const SizedBox(
                height: 150,
              ),

              _isLogin ?
              FadeInUpBig(
                delay: Duration(milliseconds: 600),
                child: Container(
                  height: 55,
                  // margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Center(child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ):
              FadeInUpBig(

                child: Container(
                  height: 55,
                  // margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Center(child: Text("Google+",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ),
              const SizedBox(height: 10,)

            ],


          ),
        ),
      ),
    );
  }
}
