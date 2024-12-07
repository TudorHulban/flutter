import 'package:flutter_test/flutter_test.dart'; // Import flutter_test
import 'package:test_flutter/main.dart'; // Import your app's main file
import 'package:intl/intl.dart'; // For consistency in date formatting

void main() {
  testWidgets('test text on screen', (WidgetTester tester) async {
    DateTime now = DateTime(2024, 12, 1);

    await tester.pumpWidget(MyApp(message: generateMessage(now)));

    String expectedText =
        'Hi, Flutter! Time is ${DateFormat('yyyy-MMM-dd').format(now)}';

    expect(find.text(expectedText), findsOneWidget);
  });
}
