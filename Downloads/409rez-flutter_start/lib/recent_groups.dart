import 'package:flutter/material.dart';

class RecentGroupsSection extends StatefulWidget {
  @override
  _RecentGroupsSectionState createState() => new _RecentGroupsSectionState();
}

class Group {
  Group({this.name, this.avatarUrl, this.on});
  final String name;
  final String avatarUrl;
  final GestureDetector on;
}

class _RecentGroupsSectionState extends State<RecentGroupsSection> {
  List<Group> groups = [
    new Group(
        name: 'Eminem',
        avatarUrl: 'https://images7.alphacoders.com/333/thumb-1920-333234.jpg',
        on: new GestureDetector(
          onTap: () {},
        )),
    new Group(
      name: 'Ellie Goulding',
      avatarUrl:
          'https://hdqwalls.com/download/ellie-goulding-wallpaper-1920x1080.jpg',
    ),
    new Group(
      name: 'Imagine Dragons',
      avatarUrl: 'https://images.alphacoders.com/566/566877.jpg',
    ),
    new Group(
      name: 'Skillet ',
      avatarUrl:
          'https://steemitimages.com/DQmPxqLUFJTjsSXpXspkDW9expzcw7kkjpb2dyfTqgjRp9M/Skillet-HD-Background-.jpg',
    ),
    new Group(
      name: 'Eminem',
      avatarUrl: 'https://images7.alphacoders.com/333/thumb-1920-333234.jpg',
    ),
    new Group(
      name: 'Enrique',
      avatarUrl:
          'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg',
    ),
    new Group(
      name: 'Ellie Goulding',
      avatarUrl:
          'https://hdqwalls.com/download/ellie-goulding-wallpaper-1920x1080.jpg',
    ),
    new Group(
      name: 'Eminem',
      avatarUrl: 'https://images7.alphacoders.com/333/thumb-1920-333234.jpg',
    ),
  ];

  Widget _buildActor(BuildContext ctx, int index) {
    var group = groups[index];
    return new Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: new Column(
        children: [
          new CircleAvatar(
            backgroundImage: new NetworkImage(
              group.avatarUrl,
            ),
            radius: 40.0,
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: new Text(group.name),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: new Text(
            'Artists you love',
            style: TextStyle(color: Colors.black, fontSize: 22.0),
          ),
        ),
        new SizedBox.fromSize(
          size: const Size.fromHeight(120.0),
          child: new ListView.builder(
            itemCount: groups.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 12.0, left: 20.0),
            itemBuilder: _buildActor,
          ),
        ),
      ],
    );
  }
}

class RecentSecondgroupSection extends StatefulWidget {
  @override
  _RecentSecondgroupSectionState createState() =>
      new _RecentSecondgroupSectionState();
}

class Secondgroup {
  Secondgroup({this.name, this.avatarUrl});
  final String name;
  final String avatarUrl;
}

class _RecentSecondgroupSectionState extends State<RecentSecondgroupSection> {
  List<Group> groups = [
    new Group(
      name: 'Eminem',
      avatarUrl: 'https://images7.alphacoders.com/333/thumb-1920-333234.jpg',
    ),
    new Group(
      name: 'Imagine Dragons',
      avatarUrl: 'https://images.alphacoders.com/566/566877.jpg',
    ),
    new Group(
      name: 'Ellie Goulding',
      avatarUrl:
          'https://hdqwalls.com/download/ellie-goulding-wallpaper-1920x1080.jpg',
    ),
    new Group(
      name: 'Enrique',
      avatarUrl:
          'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg',
    ),
    new Group(
      name: 'Skillet ',
      avatarUrl:
          'https://steemitimages.com/DQmPxqLUFJTjsSXpXspkDW9expzcw7kkjpb2dyfTqgjRp9M/Skillet-HD-Background-.jpg',
    ),
    new Group(
      name: 'Enrique',
      avatarUrl:
          'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg',
    ),
    new Group(
      name: 'Ellie Goulding',
      avatarUrl:
          'https://hdqwalls.com/download/ellie-goulding-wallpaper-1920x1080.jpg',
    ),
    new Group(
      name: 'Eminem',
      avatarUrl: 'https://images7.alphacoders.com/333/thumb-1920-333234.jpg',
    ),
    new Group(
      name: 'Enrique',
      avatarUrl:
          'http://www.scalsys.com/wallpaper/Enrique-Iglesias-Wallpapers-HD-Backgrounds/Enrique-Iglesias-Wallpapers-HD-Backgrounds_74322.jpg',
    ),
  ];

  Widget _buildActor(BuildContext ctx, int index) {
    final String avatar_url = "https://hdqwalls.com/download/ellie-goulding-wallpaper-1920x1080.jpg";
    
    var group = groups[index];
    return new Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: new GestureDetector(
        onTap: () {
          setState(() {

                CircleAvatar(backgroundImage: new NetworkImage('avatar_url'),); 
              
          });
        },
        child: new Column(
          children: [
            new CircleAvatar(
              backgroundImage: new NetworkImage(
                group.avatarUrl,
              ),
              radius: 40.0,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: new Text(group.name),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
        ),
        new SizedBox.fromSize(
          size: const Size.fromHeight(120.0),
          child: new ListView.builder(
            itemCount: groups.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 12.0, left: 20.0),
            itemBuilder: _buildActor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                width: 16.0,
              ),
              Text(
                "Songs we reommend",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
              height: 210.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: citycards,
              )),
        ),
        Container(
            height: 210.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: citycards,
            ))
      ],
    );
  }
}

List<Citycard> citycards = [
  Citycard("images/enrique.jpg", "Enrique"),
  Citycard("images/love.jpg", "Enrique"),
  Citycard("images/sos.jpg", "Enrique"),
  Citycard("images/enrique.jpg", "Enrique"),
  Citycard("images/enrique.jpg", "Enrique"),
  Citycard("images/enrique.jpg", "Enrique"),
  Citycard("images/enrique.jpg", "Enrique"),
  Citycard("images/enrique.jpg", "Enrique"),
  Citycard("images/enrique.jpg", "Enrique"),
];

class Citycard extends StatelessWidget {
  final String path, artistname;
  Citycard(this.path, this.artistname);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        child: Stack(
          children: <Widget>[
            Container(
                height: 210.0,
                width: 160.0,
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                ))
          ],
        ),
      ),
    );
  }
}
