import 'package:flutter/material.dart';

class VerticalStepperScreen extends StatefulWidget {
  const VerticalStepperScreen({Key? key}) : super(key: key);

  @override
  State<VerticalStepperScreen> createState() => _VerticalStepperScreenState();
}

class _VerticalStepperScreenState extends State<VerticalStepperScreen> {
  int _currentStep = 0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vertical Stepper Example'),
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _currentStep,
        onStepTapped: (step) => setState(() {
          _currentStep = step;
        }),
        onStepContinue: _currentStep < 3
            ? () => setState(() {
                  _currentStep += 1;
                })
            : null,
        onStepCancel: _currentStep > 0
            ? () => setState(() {
                  _currentStep -= 1;
                })
            : null,
        steps: [
          _buildStep('Step 1', 'This is the first step.'),
          _buildStep('Step 2', 'This is the second step.'),
          _buildStep('Step 3', 'This is the third step.'),
          _buildStep('Step 4', 'This is the fourth step.'),
        ],
      ),
    );
  }

  Step _buildStep(String title, String subtitle) {
    return Step(
      title: Row(
        children: [
          const VerticalDivider(
            width: 4,
            thickness: 2,
            color: Colors.blue,
          ),
          const SizedBox(width: 8),
          Text(title),
        ],
      ),
      subtitle: Row(
        children: [
          const VerticalDivider(
            width: 4,
            thickness: 2,
            color: Colors.transparent,
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(subtitle)),
        ],
      ),
      content: const SizedBox.shrink(),
      isActive: true,
      state: StepState.indexed,
    );
  }
}
