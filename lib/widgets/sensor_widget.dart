import 'package:flutter/material.dart';
import 'package:flutter_working_with_sensors/sensors/accelerometer.dart';
import 'package:flutter_working_with_sensors/sensors/gyroscope.dart';
import 'package:flutter_working_with_sensors/sensors/user_accelerometer.dart';

class SensorWidget extends StatelessWidget {
  const SensorWidget();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 0.9,
      direction: Axis.vertical,
      children: const <Widget>[
        AccelerometerData(),
        UserAccelerometerData(),
        GyroscopeData(),
      ],
    );
  }
}
