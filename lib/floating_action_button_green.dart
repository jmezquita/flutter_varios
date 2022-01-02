import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

    Icon _icon = const Icon(Icons.favorite_border);

  void onPressedFav() {
    String msg = "Add favorite..";

    if (_icon.icon == Icons.favorite_border) 
    {
            _icon = const Icon(Icons.favorite);
      msg = "Add favorite..";

    } 
    else 
    {
      _icon = const Icon(Icons.favorite_border);
      msg = "Remove favorite..";

    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
          duration: const Duration(milliseconds: 800),
          backgroundColor: const Color(0xFF4268D3),
        
      ),
    );

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav button",
      onPressed: onPressedFav,
      child: _icon,
    );
  }
}
