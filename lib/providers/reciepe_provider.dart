import 'package:flutter/material.dart';
import 'package:foodiez/models/reciepe.dart';
import '../services/reciepe_services.dart';

class ReciepeProvider extends ChangeNotifier {
  List<Reciepe> reciepes = [];

  Future<void> getReciepe() async {
    reciepes = await ReciepeServices().getReciepe();
  }

  void createReciepe(Reciepe reciepe) async {
    await ReciepeServices().createReciepe(reciepe: reciepe);
  }
}
