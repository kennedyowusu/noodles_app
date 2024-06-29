import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  const Accordion({super.key, required this.title, required this.content});
  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  // Show or hide the content
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showContent = !_showContent;
                    });
                  },
                  child: Text(
                    widget.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  _showContent
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
                onPressed: () {
                  setState(() {
                    _showContent = !_showContent;
                  });
                },
              ),
            ],
          ),
        ),
        // Show or hide the content based on the state
        _showContent
            ? SizedBox(
                child: Text(widget.content),
              )
            : const SizedBox.shrink()
      ]),
    );
  }
}
