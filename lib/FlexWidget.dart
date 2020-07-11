import 'package:flutter/material.dart';

/**
 *1.弹性布局（Flex）
    允许子组件按照一定比例来分配父容器空间。
    主要通过Flex和Expanded来配合实现
    ① Flex
    Flex组件可以沿着水平或垂直方向排列子组件
    direction : Axis.vertical 表示垂直方向 Axis.horizontal 表示水平方向
    flex : 弹性系数，大于0会按比例来分割，等于0不会扩展占用的空间
 *
 *
 */
class FlexWidget extends StatefulWidget {
  FlexWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FlexWidgetState createState() => _FlexWidgetState();
}

class _FlexWidgetState extends State<FlexWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 400,
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.yellow,
                    ))
              ],
            ),
          ),
          Container(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // 子组件的排列方式为主轴两端对齐
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.deepPurple,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
