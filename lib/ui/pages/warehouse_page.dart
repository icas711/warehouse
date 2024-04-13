import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/bloc/warehouse_bloc.dart';
import 'package:warehouse/repositories/warehouse_repo.dart';
import 'package:warehouse/ui/pages/widgets/warehouse_list.dart';

class WarehousePage extends StatefulWidget{
  final String token;

  WarehousePage({super.key, required this.token});

  @override
  State<WarehousePage> createState() => _WarehousePageState();
}

class _WarehousePageState extends State<WarehousePage> {
  final repository = WarehouseRepo();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: MultiBlocProvider(
          providers: [
            BlocProvider(
        create: (context) => WarehouseBloc(warehouseRepo: repository),),
            BlocProvider(
              create: (context) => EditBloc(warehouseRepo: repository),),
        ],
        child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: WarehouseList(token: widget.token)),
      ),

    );
  }
}