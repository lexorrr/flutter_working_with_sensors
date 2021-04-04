import 'package:flutter/material.dart';
import 'package:flutter_working_with_sensors/widgets/chip_icon.dart';
import 'package:sensors/sensors.dart';

class GyroscopeData extends StatelessWidget {
  static final initialData = GyroscopeEvent(0, 0, 0);
  const GyroscopeData();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<GyroscopeEvent>(
      stream: gyroscopeEvents,
      initialData: initialData,
      builder: (context, accel) {
        final data = accel.data;

        if (data != null) {
          final x = data.x.toStringAsFixed(2);
          final y = data.y.toStringAsFixed(2);
          final z = data.z.toStringAsFixed(2);

          return ChipWithIcon(
              icon: Icon(Icons.compass_calibration),
              text: 'Gyroscope: $x, $y, $z');
        }

        return const Text('No data to display.');
      },
    );
  }
}
