import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/domain/controllers/forget_password.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final ForgotPasswordRepository _forgotPasswordRepository =
      ForgotPasswordRepository();

  void _resetPassword() async {
    final String phoneNumber = _phoneNumberController.text.trim();

    if (phoneNumber.isNotEmpty) {
      try {
        await _forgotPasswordRepository.resetPassword(phoneNumber);
        // Show success message or navigate to a success screen
        // For example:
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Success'),
            content: Text('Password reset sent successfully.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      } catch (error) {
        // Show error message
        // For example:
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Error'),
            content: Text(error.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    } else {
      // Show error message if phone number field is empty
      // For example:
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Error'),
          content: Text('Please enter your phone number.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 54, 88, 180),
      ),
      body: Container(
        color: Color.fromARGB(255, 54, 88, 180),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    labelText: 'Phone Numberx',
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                child: ElevatedButton(
                  onPressed: _resetPassword,
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 50), shadowColor: Colors.red),
                  child: Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
