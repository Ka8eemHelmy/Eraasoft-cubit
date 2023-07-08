import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://cdn-images-1.medium.com/maxn/1200/1*5-aoK8IBmXve5whBQM90GA.png',
            color: Colors.red,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.red, width: 2),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Text(
                      'sfasdfasdf kjsahdfkashdf kjlashf kjsahf jkashfl ashkjf haslkj fhalskj fhlasj fhkj ashf haslf haksjlfh kjas hfjjmklll;l jhfksadj fh;lajrg k;asdf;k asdklfh ajksdhf ljkasfhljkashflkj ahsdf lhasl jkdfhas kdfhkajdsfhas kdjhf kajsdhf kljsadhf hjksadfh skljfh lksahdf kjahsf ',
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  SizedBox(height: 10,),
                  CircularProgressIndicator.adaptive(),
                  Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.red, width: 2),
                      color: Colors.lightBlueAccent,
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      color: Colors.yellow,
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Ther\'s an Error on Image',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              );
            },
          ),
          const Text(
            'Press Button To Increase number',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '123',
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              print('Presed on TextButton');
            },
            child: Text(
              'Text Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Icon(Icons.add),
            color: Colors.yellow,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text('Elevated'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              )),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.abc),
            ),
            iconSize: 50,
            color: Colors.red,
            style: IconButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
          ),
          InkWell(
            onTap: () {
              print('كريم');
            },
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.abc),
            ),
          ),
        ],
      ),
    );
  }
}
