import 'package:flutter/material.dart';

//Define "root widget"

class HorizonalList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HorizonalListState();
  }
}
class HorizonalListState extends State<HorizonalList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    final screenSize=MediaQuery.of(context).size;
    return new Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:250.0),
        child: new Container(
          height: 90.0,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(
                   onTap:(){ 
              
                   },
                          
                                            
                                 child: new CircleAvatar(
              backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
              ),
              radius: 40.0,
            ),
                                    
                 ),
               ),
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new CircleAvatar(
              backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
              ),
              radius: 40.0,
            ),
                ),
              
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: new CircleAvatar(
              backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
              ),
              radius: 40.0,
            ),
                 ),
              
              
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new CircleAvatar(
              backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
              ),
              radius: 40.0,
            ),
                  ),
                  
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: new CircleAvatar(
              backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
              ),
              radius: 40.0,
            ),
                   ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new CircleAvatar(
                backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
                ),
                radius: 40.0,
            ),
              ),
              
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: new CircleAvatar(
              backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
              ),
              radius: 40.0,
            ),
                 ),
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new CircleAvatar(
              backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
              ),
              radius: 40.0,
            ),
                ),
              
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new CircleAvatar(
              backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
              ),
              radius: 40.0,
            ),
                  ),
              
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: new CircleAvatar(
              backgroundImage: new NetworkImage( 'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg'
              ),
              radius: 40.0,
            ),
                 ),
              

            ],
          ),
        ),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    final materialApp = new MaterialApp(
      title: '',
      // ignore: strong_mode_invalid_cast_new_expr
      home: new HorizonalList(),
    );
    return materialApp;
  }
}