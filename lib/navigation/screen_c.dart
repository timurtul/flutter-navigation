import 'package:flutter/material.dart';
import 'package:navigation_flutter/model/screen_arg.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold( 
      body: Column( 
                mainAxisAlignment: MainAxisAlignment.center,
        children: [
         AppBar(),
          const Text("Screen C"),
          Text(data.title.isEmpty ?'Empty' : data.title),
           OutlinedButton(
            onPressed: () {
              Navigator.pop(context );
            },
            child: const Text("Screen C"),
           ),
        ],
        
      )
    );
  }
}