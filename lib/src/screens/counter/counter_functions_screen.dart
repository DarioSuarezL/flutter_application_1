import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int touchCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () { 
              setState(() {
                touchCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$touchCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100) ,),
            Text('Touch${ touchCounter == 1 ? '':'s' }', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),),
          ]
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              if (touchCounter == 0) return;
              touchCounter--;
              setState(() {
              });
            },
          ),

          const SizedBox(height: 10),

          CustomButton(
            icon: Icons.plus_one,
            onPressed: (){
              touchCounter++;
              setState(() {
              });
            }),
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}