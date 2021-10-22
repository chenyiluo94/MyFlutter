import 'package:flutter/material.dart';
class ImageItem extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _ImageItem();
  }
}
class _ImageItem extends State<ImageItem>{
  int groupValue=1;
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(children: [
        new Text("图片举例"),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Icon(Icons.star, color: Colors.red[500]),
                  new Image.asset('images/2.0x/list_img.png',
                      width: 100, height: 100),
                  Image(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    image: AssetImage("images/2.0x/list_img.png"),
                  ),
                  Image.network(
                    'https://img2.baidu.com/it/u=1514002029,2035215441&fm=26&fmt=auto',
                    width: 100,
                    height: 100,
                  ),
                  Image(
                    width: 100,
                    height: 100,
                    image: NetworkImage(
                        "https://img2.baidu.com/it/u=1514002029,2035215441&fm=26&fmt=auto"),
                  ),
                ],
              ),
      ],),
    );
  }

}