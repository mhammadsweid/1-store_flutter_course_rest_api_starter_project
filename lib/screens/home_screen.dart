import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 late TextEditingController _textEditingController;
  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          leading: IconButton(
            icon: const Icon(Icons.category),
            // tooltip: 'Menu Icon',
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              // tooltip: 'Menu Icon',
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              TextField(
                     controller: _textEditingController,
                  )
            ],
          ),
        ),
      ),
    );
  }
}
