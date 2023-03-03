import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: Text(
            style: TextStyle(fontStyle: FontStyle.italic),
            'Simple Counter App'),
      ),
      body: BlocProvider(
        create: (_) => CounterBloc(),
        child: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<CounterBloc, int>(
                    builder: (context, state) {
                      return Container(
                        child: Text(
                          '$state',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        elevation: 4,
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(32),
                        child: InkWell(
                          onTap: () => context.read<CounterBloc>().increment(),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Icon(
                              Icons.add,
                              size: 48,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      Material(
                        elevation: 4,
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(32),
                        child: InkWell(
                          onTap: () => context.read<CounterBloc>().decrement(),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Icon(
                              Icons.remove,
                              size: 48,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      'This is a simple counter app created using Flutter and state management with Bloc.',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    '\n \n Developed by Aniketh Gupta',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
