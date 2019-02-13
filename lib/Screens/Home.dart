import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        centerTitle: true,
        title: Text("ORGANIZATION", style: TextStyle(
          color: Colors.white,
        )),
      ),
      floatingActionButton: _buildFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomAppBar(),
      body: Container(
        padding: EdgeInsets.only(top: 5.0),
        child: Column(
          children: <Widget>[

          ],
        ),
      )
    );
  }

  Widget _buildFloatingButton() {
    return FloatingActionButton(
      onPressed: null,
      child: Icon(Icons.add, size: 30.0, color: Colors.black,),
      backgroundColor: Colors.white70,
    );
  }
  Widget _buildBottomAppBar() {
    return Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              iconSize: 30.0,
              icon: Icon(Icons.wb_incandescent, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 30.0,
              icon: Icon(Icons.report, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

}
