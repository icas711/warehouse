import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/warehouse_bloc.dart';
import 'package:warehouse/repositories/warehouse_repo.dart';
import 'package:warehouse/ui/pages/widgets/warehouse_list.dart';

class WarehousePage extends StatelessWidget{
  final String token;

  WarehousePage({super.key, required this.token});


  final repository = WarehouseRepo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список'),
      ),
      body: BlocProvider(
        create: (context) => WarehouseBloc(warehouseRepo: repository),
        child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: WarehouseList(token: token)),
      ),
    );
  }


}