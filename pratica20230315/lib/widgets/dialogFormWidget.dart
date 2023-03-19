import "package:flutter/material.dart";

class DialogFormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final List<TextFormField> formFields;
  final void Function()? handleCancel;
  final void Function() handleAccept;

  const DialogFormWidget({
    Key? key,
    required this.formKey,
    required this.formFields,
    required this.handleAccept,
    this.handleCancel = null,
  }) : super(key: key);

  @override
  AlertDialog build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: formFields,
        ),
      ),
      actions: [
        IconButton(
          onPressed: handleCancel ?? () => Navigator.of(context).pop(),
          color: Colors.red.shade300,
          icon: Icon(Icons.cancel_rounded),
        ),
        IconButton(
          onPressed: handleAccept,
          color: Colors.green.shade300,
          icon: Icon(Icons.add_circle_rounded),
        ),
      ],
    );
  }
}
