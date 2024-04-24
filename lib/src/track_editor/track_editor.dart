import 'package:flutter/material.dart';
import 'package:samplevault_daw/src/track_editor/editor.dart';
import 'package:samplevault_daw/src/track_editor/track_list.dart';

class TrackEditor extends StatefulWidget {
  const TrackEditor({super.key});

  @override
  State<TrackEditor> createState() => _TrackEditorState();
}

class _TrackEditorState extends State<TrackEditor> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [TrackList(), Editor()],
    ));
  }
}
