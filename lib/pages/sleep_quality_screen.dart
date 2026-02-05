import 'package:flutter/material.dart';

import 'package:firstproduction_pro/pages/physical_activity_screen.dart';

class SleepQualityScreen extends StatefulWidget {
  const SleepQualityScreen({super.key});

  @override
  State<SleepQualityScreen> createState() => _SleepQualityScreenState();
}

class _SleepQualityScreenState extends State<SleepQualityScreen> {
  String? selectedHours;
  String? selectedQuality;

  bool get isContinueEnabled =>
      selectedHours != null && selectedQuality != null;

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
          "Question 6 of 16",
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
              "On average, how many hours of sleep do you get per night?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            Wrap(
              spacing: 8,
              children: ["5", "6", "7", "8", "9+"].map((hour) {
                return _optionChip(
                  label: hour,
                  isSelected: selectedHours == hour,
                  onTap: () => setState(() => selectedHours = hour),
                );
              }).toList(),
            ),

            const SizedBox(height: 50),

            const Text(
              "How is the quality of your sleep?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            Wrap(
              spacing: 20,
              runSpacing: 30,
              children: ["Sound", "  Fair ", "Restless"].map((quality) {
                return _optionChip(
                  label: quality,
                  isSelected: selectedQuality == quality,
                  onTap: () => setState(() => selectedQuality = quality),
                );
              }).toList(),
            ),

            const Spacer(),

            _continueButton(),

            const SizedBox(height: 30),
          ],
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

          Navigator.pushNamed(context, '/physicalActivity');


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

  Widget _optionChip({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
