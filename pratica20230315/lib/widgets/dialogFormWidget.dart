import "package:flutter/material.dart";

class DialogFormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String titleText;
  final List<TextFormField> formFields;
  final void Function()? handleCancel;
  final void Function() handleAccept;

  const DialogFormWidget({
    Key? key,
    required this.formKey,
    required this.titleText,
    required this.formFields,
    required this.handleAccept,
    this.handleCancel = null,
  }) : super(key: key);

  @override
  AlertDialog build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(titleText),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: formFields,
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: handleCancel ?? () => Navigator.of(context).pop(),
          child: const Icon(Icons.cancel_outlined),
        ),
        ElevatedButton(
          onPressed: handleAccept,
          child: const Icon(Icons.done_outline_rounded),
        ),
      ],
    );
  }
}
