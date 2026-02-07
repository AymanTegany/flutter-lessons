import 'package:bloc_app/bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with BlocSelector'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            
            // ================= Counter A =================
            Container(
              child: Column(
                children: [
                  const Text("counter A", style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  BlocSelector<CounterBloc, CounterState, int>(
                    selector: (state) => state.countA,
                    builder: (context, countA) {
                      print("countA");
                      return Text(
                        countA.toString(),
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(IncrementA());
                        },
                        child: const Text('+ A'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(DecrementA());
                        },
                        child: const Text('- A'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // ================= Counter B =================
            Container(
              child: Column(
                children: [
                  const Text("counter B", style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  BlocSelector<CounterBloc, CounterState, int>(
                    selector: (state) => state.countB,
                    builder: (context, countB) {
                      print("countB");
                      return Text(
                        countB.toString(),
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(IncrementB());
                        },
                        child: const Text('+ B'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(DecrementB());
                        },
                        child: const Text('- B'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
