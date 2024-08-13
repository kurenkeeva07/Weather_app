import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/city_search/presentation/bloc/city_search_bloc.dart';

class CitySearchPage extends StatelessWidget {
  CitySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _Body(),
      ),
      floatingActionButton: _SearchButton(),
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton({super.key});

  @override
  Widget build(BuildContext context) {

    final bloc =context.read<CitySearchBloc>();

    return FloatingActionButton(
      onPressed: () => bloc.add(CitySearchDataFetched()),
      child: const Icon(Icons.search_rounded),
    );
  }
}

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();
    return TextField(
      controller: bloc.searchController,
      decoration: InputDecoration(
          labelText: 'Search'
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
        }
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
            return CircularProgressIndicator();
          }
          return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: _SearchTextField(),
                ),
                _SearchText(),
              ]
          );
        }
    );
  }
}



