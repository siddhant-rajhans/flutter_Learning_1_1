import 'package:flutter/material.dart';


main(){runApp(RngeSlider());}

class RngeSlider extends StatefulWidget {
  const RngeSlider({super.key});

  @override
  State<RngeSlider> createState() => _RngeSliderState();
}

class _RngeSliderState extends State<RngeSlider> {
  RangeValues values = RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return MaterialApp(
      title: 'Range Slider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Range Slider'),
        ),
        body:

        //For range slider default value of slider is 0 & 1.

        RangeSlider(values: values ,
            labels : labels,
            divisions: 20,
            min: 0,
            max: 100,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            onChanged: (newValue){
            values = newValue;
            print('${newValue.start}, ${newValue.end}');
          setState(() {

          });
        }),
      ),
    );
  }
}
