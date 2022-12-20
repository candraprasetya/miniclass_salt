part of '../screens.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.white,
      appBar: AppBar(
        backgroundColor: colorName.white,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              skip,
              style: TextStyle(color: colorName.darkGrey),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0.0, backgroundColor: colorName.blue),
          onPressed: () {},
          child: Text('Lanjutkan'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Image
            Image.asset(happyNewYearImage),
            //Indicator
            Row(
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  width: 20,
                  height: 6,
                  color: (index == 0) ? colorName.blue : colorName.grey,
                ),
              ),
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 16),
            //Greeting Text
            Column(
              children: const [
                Text(
                  greetingTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  greetingDesc,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
