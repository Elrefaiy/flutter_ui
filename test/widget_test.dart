import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui/app.dart';

void main() {
  testWidgets(
    'test',
    (WidgetTester tester) async {
      await tester.pumpWidget(const FlutterUi());
    },
  );
}
