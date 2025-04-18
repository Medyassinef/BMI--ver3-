import 'package:bmi_firebase/data/bmi_record.dart';
import 'package:bmi_firebase/data/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final FirestoreService firestoreService = FirestoreService();

    return Scaffold(
      appBar: AppBar(title: const Text('BMI History')),
      body: StreamBuilder<List<BmiRecord>>(
        stream: firestoreService.getBmiRecords(user.uid),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final records = snapshot.data ?? [];

          if (records.isEmpty) {
            return const Center(child: Text('No BMI records found'));
          }

          return ListView.builder(
            itemCount: records.length,
            itemBuilder: (context, index) {
              final record = records[index];
              return Dismissible(
                key: Key(record.id!),
                background: Container(color: Colors.red),
                onDismissed: (direction) {
                  firestoreService.deleteBmiRecord(record.id!);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Record deleted')),
                  );
                },
                child: Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    title: Text('BMI: ${record.bmi.toStringAsFixed(2)}'),
                    subtitle: Text(
                        '${record.weight.toStringAsFixed(1)} kg, ${record.height.toStringAsFixed(1)} cm\n${record.category}'),
                    trailing: Text(
                      DateFormat('MMM d, y').format(record.date),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}