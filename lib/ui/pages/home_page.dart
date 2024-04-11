import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/token_bloc.dart';
import 'package:warehouse/repositories/token_repo.dart';
import 'package:warehouse/ui/pages/sign_in.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.title});

  final String title;


  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => TokenRepo(),
      child: BlocProvider(
        create: (context) => TokenBloc(
          tokenRepo: RepositoryProvider.of(context),
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Text(title),
          ),
          body: const ShowSignInButton(),
        ),
      ),
    );
  }
}
