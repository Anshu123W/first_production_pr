import 'package:flutter/material.dart';



class PhysicalActivityScreen extends StatefulWidget {
  const PhysicalActivityScreen({super.key});

  @override
  State<PhysicalActivityScreen> createState() =>
      _PhysicalActivityScreenState();
}

class _PhysicalActivityScreenState extends State<PhysicalActivityScreen> {
  String? selectedOption;

  bool get isContinueEnabled => selectedOption != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Question 7 of 16",
          style: TextStyle(color: Colors.grey),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            const Text(
              "How often are you physically active (e.g., walk, workout, yoga) for at least 20 minutes?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 41),

            ...[
              "Rarely",
              "1-2 days a week",
              "3-4 days a week",
              "5+ days a week"
            ].map(
                  (option) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: _optionButton(option),
              ),
            ),

            const Spacer(),

            _continueButton(),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _optionButton(String label) {
    final isSelected = selectedOption == label;

    return GestureDetector(
      onTap: () => setState(() => selectedOption = label),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 22),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _continueButton() {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: isContinueEnabled ? () {



        } : null,
        style: ElevatedButton.styleFrom(
          backgroundColor:
          isContinueEnabled ? Colors.black : Colors.grey.shade300,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 0,
        ),
        child: const Text(
          "CONTINUE",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
