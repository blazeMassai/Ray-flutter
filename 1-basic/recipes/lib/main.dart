import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Recipe Calculator',
        theme: ThemeData(
            primaryColor:  Colors.white,
            colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black)
        ),
        home: const MyHomePage(title: 'Recipe Puzzler'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

  ////Scaffold defines the page’s general structure

    //0xff ni ku-initialize hex-colors
    Color mainColor = const Color(0xffb74093);

    return Scaffold(
      appBar: AppBar(
        backgroundColor:  mainColor,
        title: Text(widget.title),
      ),

      //SafeArea keeps the app from getting too close to the operating system
      // interfaces, such as the notch or the interactive area of most iPhones.
      body: SafeArea(

        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            // GestureDetector’s child widget defines the area where the gesture is active
            return GestureDetector(
              onTap: () {

                //navigator widget manages a stack of pages . Calling push() with a
                // MaterialPageRoute will push a new Material page onto the stack.
                Navigator.push(context,
                    MaterialPageRoute(
                      //builder creates the destination page widget.
                      builder: (context){
                        return RecipeDetail(recipe: Recipe?.samples[index]);
                      },
                    ),
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          }
            ),
      ),
    );
  }
  
  Widget buildRecipeCard(Recipe recipe){
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:Padding(
        padding: const EdgeInsets.all(32.0),//hii iningiza picha kwa ndani
          child: Column(
              children: <Widget>[
                Image(image: AssetImage(recipe.imageUrl)),

                //SizedBox around the Image, which defines resizable bounds
                //for the image
                //The unit of measurement in Flutter is logical pixels.
                const SizedBox(
                  height: 14.0,
                ),
                Text(
                    recipe.label,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Palatine',
                  )
                ),
              ]
          )
      ),

    );
  }
}
