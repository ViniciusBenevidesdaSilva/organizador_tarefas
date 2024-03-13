import 'package:flutter/material.dart';
import 'package:organizador_tarefas/widgets/formated_image.dart';
import 'package:organizador_tarefas/widgets/star_rating.dart';

class Task extends StatefulWidget {
  final String name;
  final int difficulty;

  final String? pictureUrl;
  final String? pictureAsset;

  const Task({
    Key? key,
    required this.name,
    required this.difficulty,
    this.pictureUrl,
    this. pictureAsset,
  }) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  static int nivelMax = 5;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)
                  ),
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FormattedImage(
                      pictureAsset: widget.pictureAsset,
                      pictureUrl: widget.pictureUrl,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                              widget.name,
                              style: const TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis,
                              )
                          ),
                        ),
                        StarRatingDifficulty(difficulty: widget.difficulty,),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                          onPressed: (){
                            setState((){
                              if(nivel < nivelMax){
                                nivel++;
                              }
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black54),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.arrow_drop_up),
                              Text('UP', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      child: nivel == nivelMax ?
                      const LinearProgressIndicator(
                          color: Colors.white70
                      ) :
                      LinearProgressIndicator(
                        color: Colors.white,
                        value: nivel / nivelMax,
                      ),
                    ),
                    Text(
                        'Nível $nivel',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

