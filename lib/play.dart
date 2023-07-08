import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 5,
          padding: EdgeInsets.all(12),
          childAspectRatio: 9 / 16,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Image.network('https://animals.sandiegozoo.org/sites/default/files/2016-08/hero_zebra_animals.jpg', fit: BoxFit.cover,),
            Image.network('https://a-z-animals.com/media/tiger_laying_hero_background.jpg', fit: BoxFit.cover,),
            Image.network('https://media.wired.com/photos/593261cab8eb31692072f129/master/w_2560%2Cc_limit/85120553.jpg', fit: BoxFit.cover,),
            Image.network('https://i.natgeofe.com/k/63b1a8a7-0081-493e-8b53-81d01261ab5d/red-panda-full-body_4x3.jpg', fit: BoxFit.cover,),
            Image.network('https://media.newyorker.com/photos/62c4511e47222e61f46c2daa/4:3/w_2663,h_1997,c_limit/shouts-animals-watch-baby-hemingway.jpg', fit: BoxFit.cover,),
            Image.network('https://m.media-amazon.com/images/M/MV5BNDBjMmJiNjUtZjc0MS00OTFlLTgxM2UtMTlhN2E0MGI0OTQwXkEyXkFqcGdeQXVyMTY4NjM3MDY@._V1_FMjpg_UX1000_.jpg', fit: BoxFit.cover,),
            Image.network('https://www.paigntonzoo.org.uk/wp-content/uploads/2022/07/NZ_Animal_Photos_04-22_LR-43-1024x683.jpg', fit: BoxFit.cover,),
            Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Giant_Panda_2004-03-2.jpg/1200px-Giant_Panda_2004-03-2.jpg', fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
