import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:xo/page/welcome_page.dart';
import 'package:xo/page/join_page.dart';
import 'package:xo/widgets/custom_textfield.dart';
import 'package:xo/widgets/custome_text.dart';
import 'package:xo/widgets/custom_buttom.dart';
import 'package:flutter/scheduler.dart';

/*class Scoreboard extends StatelessWidget {
  static const String routeName = '/scoreboard';

  const Scoreboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final String roomID = args['roomID'];
    final String playerNameX = args['playerNameX'];
    final String playerNameY = args['playerNameY'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Scoreboard'),
      ),
      body: Column(
        children: [
          Text('Room ID: $roomID'),
          Text('Player X: $playerNameX'),
          Text('Player O: $playerNameY'),
          SizedBox(height: 20), // Add some space between the text and the board
          TicTacToeBoard(), // Add the tic tac toe board
        ],
      ),
    );
  }
}

class TicTacToeBoard extends StatefulWidget {
  const TicTacToeBoard({Key? key}) : super(key: key);

  @override
  _TicTacToeBoardState createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  List<String> board = List.filled(9, '');
  bool isFirstPlayerX = true;
  String? winner;
  int scoreX = 0;
  int scoreO = 0;

  void _clearBoard() {
  setState(() {
    board = List.filled(9, '');
    isFirstPlayerX = true;
    winner = null;
  });
}

  void _showWinDialog(String winner) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(winner == 'X' ? 'Player X is winner!' : 'Player O is winner!'),
        actions: [
          TextButton(
            child: Text("Play Again"),
            onPressed: () {
              _clearBoard();
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("Finish the game"),
            onPressed: () {
              _clearBoard();
              Navigator.pushNamed(context, WelcomePage.routeName);
            },
          )
        ],
      );
    },
  );
}

void checkWinner() {
  // Check rows
  for (int i = 0; i < 9; i += 3) {
    if (board[i].isNotEmpty && board[i] == board[i + 1] && board[i] == board[i + 2]) {
      setState(() {
        winner = board[i];
      });
      if (winner != null) {
        _showWinDialog(winner!);
      }
      return;
    }
  }

  // Check columns
  for (int i = 0; i < 3; i++) {
    if (board[i].isNotEmpty && board[i] == board[i + 3] && board[i] == board[i + 6]) {
      setState(() {
        winner = board[i];
      });
      if (winner != null) {
        _showWinDialog(winner!);
      }
      return;
    }
  }
}

  @override
Widget build(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Player X: $scoreX'),
          Text('Player O: $scoreO'),
        ],
      ),
      GridView.builder(
        itemCount: board.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (board[index].isEmpty && winner == null) {
                setState(() {
                  board[index] = isFirstPlayerX ? 'X' : 'O';
                  isFirstPlayerX = !isFirstPlayerX;
                  checkWinner();
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purpleAccent, width: 2.0,
                ),
              ),
              child: Center(
                child: Text(
                  board[index],
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: _clearBoard,
        child: Text('Clear board'),
      ),
    ],
  );
}
}*/

class Scoreboard extends StatelessWidget {
  static const String routeName = '/scoreboard';

  const Scoreboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final String roomID = args['roomID'];
    final String playerNameX = args['playerNameX'];
    final String playerNameY = args['playerNameY'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Scoreboard'),
      ),
      body: Column(
        children: [
          Text('Room ID: $roomID'),
          Text('Player X: $playerNameX'),
          Text('Player O: $playerNameY'),
          SizedBox(height: 20), // Add some space between the text and the board
          TicTacToeBoard(), // Add the tic tac toe board
        ],
      ),
    );
  }
}

class TicTacToeBoard extends StatefulWidget {
  const TicTacToeBoard({Key? key}) : super(key: key);

  @override
  _TicTacToeBoardState createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  List<String> board = List.filled(9, '');
  bool isFirstPlayerX = true;
  String? winner;
  int scoreX = 0;
  int scoreO = 0;

  void _clearBoard() {
  setState(() {
    board = List.filled(9, '');
    isFirstPlayerX = true;
    winner = null;
  });
}

  void _showWinDialog(String winner) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(winner == 'X' ? 'Player X is winner!' : 'Player O is winner!'),
        actions: [
          TextButton(
            child: Text("Play Again"),
            onPressed: () {
              _clearBoard();
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("Finish the game"),
            onPressed: () {
              _clearBoard();
              Navigator.pushNamed(context, WelcomePage.routeName);
            },
          )
        ],
      );
    },
  );
}

void checkWinner() {
    // Check rows
    for (int i = 0; i < 9; i += 3) {
      if (board[i].isNotEmpty && board[i] == board[i + 1] && board[i] == board[i + 2]) {
        setState(() {
          winner = board[i];
          if (winner == 'X') {
            scoreX++;
          } else {
            scoreO++;
          }
        });
        _showWinDialog(winner!);
        return;
      }
  }

  // Check columns
    for (int i = 0; i < 3; i++) {
      if (board[i].isNotEmpty && board[i] == board[i + 3] && board[i] == board[i + 6]) {
        setState(() {
          winner = board[i];
          if (winner == 'X') {
            scoreX++;
          } else {
            scoreO++;
          }
        });
        _showWinDialog(winner!);
        return;
      }
    }

    // Check diagonals
    if (board[0].isNotEmpty && board[0] == board[4] && board[0] == board[8]) {
      setState(() {
        winner = board[0];
        if (winner == 'X') {
          scoreX++;
        } else {
          scoreO++;
        }
      });
      _showWinDialog(winner!);
      return;
    }

    if (board[2].isNotEmpty && board[2] == board[4] && board[2] == board[6]) {
      setState(() {
        winner = board[2];
        if (winner == 'X') {
          scoreX++;
        } else {
          scoreO++;
        }
      });
      _showWinDialog(winner!);
      return;
    }

    // Check for tie
    if (!board.contains('')) {
      setState(() {
        winner = 'Tie';
      });
      _showWinDialog(winner!);
      return;
    }
  }


  @override
Widget build(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Player X: $scoreX'),
          Text('Player O: $scoreO'),
        ],
      ),
      GridView.builder(
        itemCount: board.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (board[index].isEmpty && winner == null) {
                setState(() {
                  board[index] = isFirstPlayerX ? 'X' : 'O';
                  isFirstPlayerX = !isFirstPlayerX;
                  checkWinner();
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purpleAccent, width: 2.0,
                ),
              ),
              child: Center(
                child: Text(
                  board[index],
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: _clearBoard,
        child: Text('Clear board'),
      ),
    ],
  );
}
}