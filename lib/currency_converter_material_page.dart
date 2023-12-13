import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    const outlineBorder = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        title: const Text("Currency Converter"),
        centerTitle: true,
        leading: const Icon(Icons.monetization_on),
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "INR $result",
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              decoration: const InputDecoration(
                // labelText: "Please enter the amount in INR",
                // helperText: "Hello",
                hintText: "Please enter the amount in USD",
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
                focusedBorder: outlineBorder,
                enabledBorder: outlineBorder,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 81;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black54,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 30),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
              child: const Text("Convert"),
            ),
          )
        ],
      ),
    );
  }
}

// class CurrencyConverterMaterialPage extends StatelessWidget {
//   const CurrencyConverterMaterialPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double result = 0.0;
//     final TextEditingController textEditingController = TextEditingController();

//     const outlineBorder = OutlineInputBorder(
//       borderSide: BorderSide(
//         width: 2.0,
//         style: BorderStyle.solid,
//       ),
//       borderRadius: BorderRadius.vertical(
//         top: Radius.circular(20),
//       ),
//     );

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white54,
//         title: const Text("Currency Converter"),
//         centerTitle: true,
//         leading: const Icon(Icons.monetization_on),
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             result.toString(),
//             style: const TextStyle(
//               fontSize: 35,
//               fontWeight: FontWeight.bold,
//               color: Color.fromARGB(255, 255, 255, 255),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: textEditingController,
//               style: const TextStyle(
//                 color: Color.fromARGB(255, 0, 0, 0),
//               ),
//               decoration: const InputDecoration(
//                 // labelText: "Please enter the amount in INR",
//                 // helperText: "Hello",
//                 hintText: "Please enter the amount in INR",
//                 hintStyle: TextStyle(
//                   color: Colors.black,
//                 ),
//                 prefixIcon: Icon(
//                   Icons.monetization_on_outlined,
//                   // color: Colors.white60,
//                 ),
//                 prefixIconColor: Colors.black,
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: InputBorder.none,
//                 // focusedBorder: InputBorder.none,
//                 focusedBorder: outlineBorder,
//                 enabledBorder: outlineBorder,
//               ),
//               keyboardType: TextInputType.number,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextButton(
//               onPressed: () {
//                 // if (kDebugMode) {
//                 //   print(double.parse(textEditingController.text) * 81);
//                 // }
//                 result = double.parse(textEditingController.text) * 81;
//               },
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.black54,
//                 foregroundColor: Colors.white,
//                 minimumSize: const Size(double.infinity, 30),
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8.0),
//                   ),
//                 ),
//               ),
//               child: const Text("Convert"),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
