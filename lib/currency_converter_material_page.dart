import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello World",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          TextField(
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            decoration: InputDecoration(
              // labelText: "Please enter the amount in INR",
              // helperText: "Hello",
              hintText: "Please enter the amount in INR",
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              prefixIcon: Icon(
                Icons.monetization_on_outlined,
                // color: Colors.white60,
              ),
              prefixIconColor: Colors.black,
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
              // focusedBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
