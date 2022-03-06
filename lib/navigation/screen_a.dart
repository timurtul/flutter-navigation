import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column( 
                mainAxisAlignment: MainAxisAlignment.center,
        children: [
         AppBar(),
          const Text("Screen a"),
           OutlinedButton(
            onPressed: () {
              Navigator.pop(context );
            },
            child: const Text("Screen A"),
           ),
        ],
        
      )
    );
  }
}