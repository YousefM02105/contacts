
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool showForm = false;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    phone.dispose();
    super.dispose();
  }

  Widget myTextField(String hint, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6),
      child: TextField(
        controller: controller,
        onChanged: (value) {
          setState(() {});
        },
        style: TextStyle(
          color: Color(0xFFFFF1D4),
          fontSize: 16,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Color(0xFFE2F4F8),
            fontSize: 14,
          ),
          contentPadding: EdgeInsets.all(14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color(0xFFFFF1D4)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Color(0xFFFFF1D4),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF29384D),
      resizeToAvoidBottomInset: true,

      appBar: AppBar(
        backgroundColor: Color(0xFF29384D),
        title: Image.asset(
          'assets/logo route.png',
          width: 120,
        ),
      ),

      body: showForm == false
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/empty_list.json',
              width: 300,
              height: 300,
            ),

            SizedBox(height: 20),

            Text(
              'There is No Contacts Added Here',
              style: TextStyle(
                color: Color(0xFFFFF1D4),
                fontSize: 18,
              ),
            ),
          ],
        ),
      )
          : Column(
        children: [
          Expanded(
            child: Center(
              child: Lottie.asset(
                'assets/empty_list.json',
                width: 150,
                height: 150,
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF34455B),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(28),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFFFF1D4),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Lottie.asset(
                        'assets/image_picker.json',
                      ),
                    ),

                    SizedBox(width: 8),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name.text.isEmpty
                                ? 'User Name'
                                : name.text,
                            style: TextStyle(
                              color: Color(0xFFFFF1D4),
                            ),
                          ),
                          Divider(color: Color(0xFFFFF1D4)),

                          Text(
                            email.text.isEmpty
                                ? 'example@email.com'
                                : email.text,
                            style: TextStyle(
                              color: Color(0xFFFFF1D4),
                            ),
                          ),
                          Divider(color: Color(0xFFFFF1D4)),

                          Text(
                            phone.text.isEmpty
                                ? '+200000000000'
                                : phone.text,
                            style: TextStyle(
                              color: Color(0xFFFFF1D4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                myTextField('Enter User Name', name),
                myTextField('Enter User Email', email),
                myTextField('Enter User Phone', phone),

                SizedBox(height: 6),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFF1D4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Enter user',
                      style: TextStyle(
                        color: Color(0xFF29384D),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: showForm
          ? null
          : FloatingActionButton(
        backgroundColor: Color(0xFFFFF1D4),
        child: Icon(
          Icons.add,
          color: Color(0xFF29384D),
        ),
        onPressed: () {
          setState(() {
            showForm = true;
          });
        },
      ),
    );
  }
}
