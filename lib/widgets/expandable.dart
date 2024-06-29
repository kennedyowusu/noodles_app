import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLength;

  const ExpandableText({
    super.key,
    required this.text,
    this.trimLength = 30,
  });

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final trimmedText = widget.text.length > widget.trimLength
        ? '${widget.text.substring(0, widget.trimLength)}...'
        : widget.text;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _isExpanded ? widget.text : trimmedText,
          style: Theme.of(context).textTheme.bodyMedium,
          overflow: TextOverflow.ellipsis,
          maxLines: _isExpanded ? null : 2,
        ),
        if (widget.text.length > widget.trimLength)
          TextButton(
            onPressed: _toggleExpanded,
            child: Text(
              _isExpanded ? "Show Less" : "Show More",
              style: const TextStyle(color: primaryColor),
            ),
          ),
      ],
    );
  }
}
