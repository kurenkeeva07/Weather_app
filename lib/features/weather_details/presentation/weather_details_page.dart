import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../city_search/presentation/models/weather_model.dart';

class WeatherDetailsPage extends StatelessWidget {
  const WeatherDetailsPage({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          weatherModel.location.localTime,
          style: TextStyle(fontSize: 24),
        ),
        bottom: _BottomWidget(),
      ),
      body:  Center(
        child: Text(
          'SECOND SCREEN',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(weatherModel.location.localTime);
        },
        child: Icon(Icons.abc_sharp),
      ),
    );
  }
}

class _BottomWidget extends StatelessWidget implements PreferredSizeWidget {
  const _BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 2,
      color:  Colors.black26,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 40);
}
