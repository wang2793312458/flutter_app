import 'package:flutter/material.dart';

class WrapWidget2 extends StatefulWidget {
  WrapWidget2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WrapWidgetState2 createState() => _WrapWidgetState2();
}

class _WrapWidgetState2 extends State<WrapWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Column(
        children: <Widget>[
          Wrap(
            spacing: 8, // Chip之间的间距大小
            runSpacing: 4, // 行之间的间距大小
            children: <Widget>[
              Chip(
                //添加圆形头像
                avatar: CircleAvatar(
                  backgroundColor: Colors.lightGreen.shade800,
                  child: Text(
                    '西门',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                label: Text('西门吹雪'),
              ),
              Chip(
                //添加圆形头像
                avatar: CircleAvatar(
                  backgroundColor: Colors.lightGreen.shade700,
                  child: Text(
                    '司空',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                label: Text('司空摘星'),
              ),
              Chip(
                //添加圆形头像
                avatar: CircleAvatar(
                  backgroundColor: Colors.lightGreen.shade800,
                  child: Text(
                    '婉清',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                label: Text('木婉清'),
              ),
              Chip(
                //添加圆形头像
                avatar: CircleAvatar(
                  backgroundColor: Colors.lightGreen.shade900,
                  child: Text(
                    '一郎',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                label: Text('萧十一郎'),
              )
            ],
          )
        ],
      ),
    );
  }
}
