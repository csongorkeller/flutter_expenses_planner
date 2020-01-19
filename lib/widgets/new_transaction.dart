import 'package:flutter/material.dart';
import '../utils/constants.dart';

class NewTransaction extends StatelessWidget {
  final titleController =
      TextEditingController(); //by using controller, stateless widget doesn't throw error, it's final
  final amountController = TextEditingController();

  final Function addTransaction;

  NewTransaction(this.addTransaction);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount =  double.parse(amountController.text);

    if (enteredTitle == null || enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    
     addTransaction(
      enteredTitle,
      enteredAmount
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              cursorColor: brandRaisinBlack,
              /* onChanged: (value) {
                      titleInput = value; //we overwrite the input value with the current input
                    }, */
              controller:
                  titleController, //this is how to listent to keystrokes with controller
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              cursorColor: brandRaisinBlack,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => submitData,
              /* onChanged: (value) {
                      amountInput = value; //we overwrite the input value with the current input
                    }, */
              controller: amountController,
            ),
            FlatButton(
              child: Text('Add transaction'),
              color: primaryColor.withOpacity(0.5),
              textColor: brandRaisinBlack,
              onPressed: submitData,
            )
          ],
        ),
      ),
    );
  }
}
