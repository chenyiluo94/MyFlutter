import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
class BaseButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _BaseButton();
  }
}
class _BaseButton extends State<BaseButton>{
  int groupValue=1;
  void handleChange() {
    setState(() {
      Toast.show("选择", context,
          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(children: [
         new Text("按钮举例"),
              Center(
                child: Row(
                  children: [
                    RaisedButton(child: Text('RaisedButton'), onPressed: null),
                    ElevatedButton(
                        child: Text('ElevatedButton'), onPressed: null),
                    FlatButton(child: Text('FlatButton'), onPressed: null),
                    RawMaterialButton(
                        child: Text('RawMaterialButton'), onPressed: null),
                    OutlineButton(
                        child: Text('OutlineButton '), onPressed: null),
                    IconButton(icon: Icon(Icons.star), onPressed: null),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(child: Text('1')),
                        DropdownMenuItem(child: Text('2'))
                      ],
                      hint: Text('请选择'),
                      onChanged: (value) {
                        //按钮菜单选择回调
                        setState(() {
                          handleChange();
                        });
                      },
                    )
                  ],
                ),
              ),
      ],),
    );
  }

}