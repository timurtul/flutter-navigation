import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column( 
                mainAxisAlignment: MainAxisAlignment.center,
        children: [
         AppBar(),
          const Text("Screen b"),
           OutlinedButton(
            onPressed: () {
              Navigator.pop(context );
            },
            child: const Text("Screen B"),
           ),
        ],
        
      )
    );
  }
}