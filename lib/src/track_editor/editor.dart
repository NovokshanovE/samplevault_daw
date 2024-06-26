import 'package:flutter/material.dart';
import 'package:samplevault_daw/src/track_editor/editable_track.dart';

class Editor extends StatefulWidget {
  const Editor({
    super.key,
  });

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [EditableTrack()],
    );
  }
}
