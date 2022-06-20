import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}):
      super(key: key);

  @override
  _RecipeDetailState createState(){
    return _RecipeDetailState();
  }
}



class _RecipeDetailState extends State<RecipeDetail> {

  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    //Scaffold defines the page’s general structure

    Color myColor = const Color(0xffCD5C5C);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColor,
        title: Text(widget.recipe.label),
      ),

        //SafeArea keeps the app from getting too close to the operating system
        // interfaces, such as the notch or the interactive area of most iPhones.
      body: SafeArea(
        child: Column(
          children: <Widget>[

          //SizedBox around the Image, which defines resizable bounds
        //for the image
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.imageUrl)),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),

            Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];

                    return Text(
                      '${ingredient.quantity} ${ingredient.measure}  ${ingredient.name}'
                    );

                  }
                ),
            ),

            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),

          ],
        ),
      ),
    );
  }
}