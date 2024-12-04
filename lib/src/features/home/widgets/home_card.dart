import 'package:flutter/material.dart';

class CardGeneric extends StatelessWidget {
  final String nameCard;
  final IconData iconCard;
  final String route;

  const CardGeneric({
    super.key,
    required this.nameCard,
    required this.iconCard,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Center( 
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        child: SizedBox(
          width: 100,
          height: 60,
          child: InkWell(
            onTap: () => { Navigator.pushNamed(context, route) },
            child: Row(
              children: [
                SizedBox(width: 5),
                Center(child: Icon(iconCard)),
                Expanded(child: Center(child: Text(nameCard))),
              ],
            ),
          ),
        )
      ),
    );
  }
}