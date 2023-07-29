import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_finder_app_ui/models/job_model.dart';

class PopularJobWidget extends StatelessWidget {
  const PopularJobWidget({super.key, required this.job});

  final JobModel job;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          FaIcon(
            job.companyIcon,
            size: 45,
          ),
          SizedBox(width: 15),
          Column(
            children: [
              Text(
                job.job,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                job.company,
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Spacer(),
          Column(
            children: [
              Text(
                '\$' + job.salary.toStringAsFixed(2) + '/y',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Los Angels, US',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
