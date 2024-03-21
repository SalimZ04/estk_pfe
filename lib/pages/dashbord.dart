import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Dashboard',
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _buildTile(Colors.red, Icons.widgets, 'Widget 1'),
          _buildTile(Colors.blue, Icons.access_time, 'Widget 2'),
          _buildTile(Colors.green, Icons.account_circle, 'Widget 3'),
          _buildTile(Colors.orange, Icons.dashboard, 'Widget 4'),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
        ],
      ),
    );
  }

  Widget _buildTile(Color color, IconData iconData, String title) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: ListTile(
          leading: Icon(
            iconData,
            color: Colors.white,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
