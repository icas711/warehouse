import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/token_bloc.dart';
import 'package:warehouse/ui/pages/warehouse_page.dart';

class ShowSignInButton extends StatefulWidget {
  const ShowSignInButton({Key? key}) : super(key: key);

  @override
  State<ShowSignInButton> createState() => _ShowSignInButtonState();
}

class _ShowSignInButtonState extends State<ShowSignInButton> {
  @override
  void initState() {
    context
        .read<TokenBloc>()
        .add(const TokenSignInEventFetch(login: 'admin', password: 'admin'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TokenBloc, TokenState>(
      listener: (context, state) {
        if (state is TokenStateSignIn) {
          Navigator.push<Type>(
            context,
            MaterialPageRoute(
                builder: (_) => WarehousePage(token: state.token.access_token)),
          );
        }
      },
      child: const Center(child: CircularProgressIndicator()),
      /*child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              context.read<TokenBloc>().add(const TokenSignInEventFetch(
                  login: 'admin', password: 'admin'));
            },
            child: const Text('Sign In'),
          ),
        ],
      ),*/
    );
  }
}
