import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_finder_app_ui/models/job_model.dart';

class RecomendedJobWidget extends StatelessWidget {
  const RecomendedJobWidget({super.key, required this.job});

  final JobModel job;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FaIcon(
            job.companyIcon,
            size: 50,
          ),
          Text(
            job.job,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            job.company,
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          Text(
            '\$' + job.salary.toStringAsFixed(2) + '/y',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 150,
      decoration: BoxDecoration(
        color: job.bannerColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
