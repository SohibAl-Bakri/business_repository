import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  HomeCard({
    Key? key,
    this.image,
    required this.title,
    required this.onPressed,
    required this.checkedVis,
  }) : super(key: key);

  String? image;
  final String title;
  final Function()? onPressed;
  final bool checkedVis;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.checkedVis == false
            ? widget.onPressed
            : () {
                setState(() {
                  isChecked = !isChecked;
                });
              },
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.amber,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: widget.image != null
                        ? Container(
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(
                                  widget.image!,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        : Stack(
                            children: [
                              Container(
                                height: 70,
                                decoration: BoxDecoration(
                                  //color: Colors.amber,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const SizedBox(width: 5),
                                    Text(widget.title),
                                    const SizedBox(width: 5),
                                  ],
                                ),
                              )
                            ],
                          ),
                  ),
                  Visibility(
                    visible: widget.checkedVis,
                    child: Checkbox(
                      side: const BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                      //checkColor: Colors.blue,
                      //activeColor: Colors.red,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 95,
              //   child: Card(
              //     color: Colors.amber,
              //     elevation: 5,
              //     child: Image.asset(
              //       image,
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
              widget.image != null ? Text(widget.title) : const SizedBox(),
            ],
          ),
        ));
  }
}
