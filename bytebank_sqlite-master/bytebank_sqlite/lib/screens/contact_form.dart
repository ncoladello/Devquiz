import 'package:bytebank_sqlite/database/dao/contact_dao.dart';
import 'package:bytebank_sqlite/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountNumberController =
  TextEditingController();
  final ContactDao _dao = ContactDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            TextField(
              controller: _accountNumberController,
              decoration: InputDecoration(
                labelText: 'Account Number',
              ),
              style: TextStyle(
                fontSize: 24.0,
              ),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SizedBox(
                width: double.maxFinite,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: Text('Create'),
                  onPressed: () {
                    final String name = _nameController.text;
                    final int accountNumber = int.tryParse(_accountNumberController.text);
                    final Contact newContact = Contact(0, name, accountNumber);
                    _dao.save(newContact).then((id)=> Navigator.pop(context))
                    ;
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
