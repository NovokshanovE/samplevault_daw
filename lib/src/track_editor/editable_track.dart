import 'package:flutter/material.dart';
import 'package:samplevault_daw/src/track_editor/sample.dart';

class EditableTrack extends StatelessWidget {
  const EditableTrack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(children: [
        Sample(),
      ]),
    );
  }
}
