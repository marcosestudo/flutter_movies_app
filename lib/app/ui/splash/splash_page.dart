import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_) {
          return Stack(
            children: [
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1200),
                opacity: _.visibleStrip ? 1.0 : 0.0,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // findIconSize calcula o tamanho do ícone de acordo com o tamnaho da tela
                      Icon(Icons. access_time,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.settings,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.account_balance,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.edit,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.directions_bus,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.access_time,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.settings,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.wifi,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.local_library,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.format_list_bulleted,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.restaurant,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.library_books,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.settings,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.wifi,
                        size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.local_library,
                        size: _.findIconSize(), color: Colors.white),
                    ],
                  )
                )
              )
            ],
          );
        },
      )
    );
  }
}
