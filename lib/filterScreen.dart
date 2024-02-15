import 'package:flutter/material.dart';
import 'package:internshala/addCity.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  DateTime? selectedDate;
  int? selectedDuration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton.icon(
            onPressed: () {
              // Add your add profile logic here
            },
            icon: const Icon(Icons.add),
            label: const Text('Add profile'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Add your add city logic here
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CityScreen()));
            },
            icon: const Icon(Icons.add),
            label: const Text('Add city'),
          ),
          // CheckboxListTile(
          //   title: const Text('Work from home'),
          //   value: workFromHome,
          //   onChanged: (bool? value) {
          //     setState(() {
          //       workFromHome = value!;
          //     });
          //   },
          // ),
          // CheckboxListTile(
          //   title: Text('Part-time'),
          //   value: partTime,
          //   onChanged: (bool? value) {
          //     setState(() {
          //       partTime = value!;
          //     });
          //   },
          // ),
          // RangeSlider(
          //   values: stipendRange,
          //   min: 0,
          //   max: 10000,
          //   divisions: 5,
          //   labels: RangeLabels(
          //     '₹${stipendRange.start.round().toString()}',
          //     '₹${stipendRange.end.round().toString()}',
          //   ),
          //   onChanged: (RangeValues values) {
          //     setState(() {
          //       stipendRange = values;
          //     });
          //   },
          // ),
          DropdownButton<int>(
            isExpanded: true,
            value: selectedDuration,
            hint: Text('Choose Duration'),
            onChanged: (int? newValue) {
              setState(() {
                selectedDuration = newValue;
              });
            },
            items:
                <int>[1, 2, 3, 4, 5, 6].map<DropdownMenuItem<int>>((int value) {
              return DropdownMenuItem<int>(
                value: value,
                child: Text('$value month${value > 1 ? 's' : ''}'),
              );
            }).toList(),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Implement clear all filters logic
                  },
                  child: Text('Clear all'),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Implement apply filters logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  child: Text('Apply'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
