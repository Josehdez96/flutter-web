import 'package:fluro/fluro.dart';

import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/', handler: _counterHandler, transitionType: TransitionType.fadeIn, transitionDuration: Duration(milliseconds: 150));
    router.define('/stateful', handler: _counterHandler, transitionType: TransitionType.fadeIn, transitionDuration: Duration(milliseconds: 150));
    router.define('/provider', handler: _counterProviderHandler, transitionType: TransitionType.fadeIn, transitionDuration: Duration(milliseconds: 150));
  }

  // Handlers
  static Handler _counterHandler = new Handler(
    handlerFunc: ( context, params ) => CounterView()
  );

  static Handler _counterProviderHandler = new Handler(
    handlerFunc: ( context, params ) => CounterProviderView()
  );
}

