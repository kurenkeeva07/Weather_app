import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/city_search_bloc.dart';

class CitySearchPage extends StatelessWidget {
  const CitySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _Body(),
      ),
      floatingActionButton: _SearchButton(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
      if (state.isLoading) {
        return const CircularProgressIndicator();
      }

      return Stack(
          children: [
          SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.network('https://www.google.com/search/about-this-image?img=H4sIAAAAAAAA_wEXAOj_ChUItfDH5a3U8-2tARDU3aXGt_uyzRPeo6j1FwAAAA%3D%3D&q=https:%2F%2Fin.pinterest.com%2Fpin%2Fcloudy-day-today--43980533853494460%2F&ctx=iv&hl=ru&sa=X&ved=0CAsQg4ILahcKEwjg7Z6Xjo2IAxUAAAAAHQAAAAAQKw'),
          ),
          Padding(
          padding: const EdgeInsets.all(16.0),
          child: _SearchTextField(),
          ),
          _SearchText(),
          SizedBox(height: 40),
          _HumidityWidget(),
          ],
          );
        },
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();

    return FloatingActionButton(
      onPressed: () => bloc.add(CitySearchDataFetched()),
      child: Icon(Icons.search_rounded),
    );
  }
}

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: bloc.searchController,
        decoration: InputDecoration(
          labelText: 'search',
        ),
      ),
    );
  }
}

class _SearchText extends StatelessWidget {
  const _SearchText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return Text(
          state.data?.toString() ?? '',
          style: TextStyle(fontSize: 20),
        );
      },
    );
  }
}

class _HumidityWidget extends StatelessWidget {
  const _HumidityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
          return _WeatherWidget(
            text: state.data?.current?.humidity.toString() ?? 'N/A',
            iconData: Icons.wb_twilight_rounded,
          );
        });
  }
}

class _WeatherWidget extends StatelessWidget {
  const _WeatherWidget({super.key, required this.text, required this.iconData});

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      child: Container(
          height: 100,
          width: 100,
          constraints: BoxConstraints(maxWidth: 100),
          margin: EdgeInsets.all(32),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(iconData),
              Text(
                text,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Icon(iconData, size: 44),
            ],
          )),
    );
  }
}




