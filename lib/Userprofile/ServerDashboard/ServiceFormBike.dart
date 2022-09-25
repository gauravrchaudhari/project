import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceFormBike extends StatefulWidget {
  const ServiceFormBike({super.key});

  @override
  State<ServiceFormBike> createState() => _ServiceFormBikeState();
}

class _ServiceFormBikeState extends State<ServiceFormBike> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehilce Services'),
        backgroundColor: Colors.pink[300],
      ),
    );
  }
}
