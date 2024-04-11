import 'package:flutter/material.dart';
import 'package:warehouse/models/warehouseitem.dart';

class CustomListTile extends StatelessWidget {
  final Item result;

  const CustomListTile({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 9,
      //color: const Color.fromRGBO(86, 86, 86, 0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 5),
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.9,
                child: Text(
                  result.name,
                  overflow: TextOverflow.ellipsis,
                  //style: Theme.of(context).textTheme.bodyText2,
                )),
          ),
          Text(
            result.description,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
