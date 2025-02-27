import 'package:flutter/material.dart';
import 'dart:io'; // To use exit()

void showConfirmationBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Container(
        padding: EdgeInsets.all(20),
        height: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Confirmation",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Are you sure?"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => exit(0), // Exit app when pressing "Cancel"
                  child: Text("Cancel", style: TextStyle(color: Colors.red)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Close first BottomSheet
                    showNoBalanceBottomSheet(
                        context); // Show "No balance" message
                  },
                  child: Text("Yes"),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

void showNoBalanceBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Container(
        padding: EdgeInsets.all(15),
        height: 150,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Alert",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Insufficient balance"),
            SizedBox(height: 10),
            TextButton(
              onPressed: () => Navigator.pop(context), // Close the message
              child: Text("OK"),
            ),
          ],
        ),
      );
    },
  );
}
