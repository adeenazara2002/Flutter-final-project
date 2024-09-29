import 'package:flutter/material.dart';
import 'package:flutterfinalproject/controllers/task_status_controller.dart';
import 'package:get/get.dart';

import 'package:percent_indicator/percent_indicator.dart'; 


class TaskStatusView extends StatelessWidget {
  final TaskStatusController controller = Get.put(TaskStatusController());

  const TaskStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Status'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Obx(() => CircularPercentIndicator(
                  radius: 120.0,
                  lineWidth: 15.0,
                  percent: controller.progress.value / 100,
                  center: Text("${controller.progress.value}%\nComplete"),
                  progressColor: Colors.green,
                  backgroundColor: Colors.grey[200]!,
                  circularStrokeCap: CircularStrokeCap.round,
                )),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LegendItem(color: Colors.green, label: 'To Do'),
                LegendItem(color: Colors.orange, label: 'In Progress'),
                LegendItem(color: Colors.blue, label: 'Completed'),
              ],
            ),
          ),
      
          const Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: Text('Monthly',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Expanded(
            child: Obx(() => ListView.builder(
                  itemCount: controller.taskList.length,
                  itemBuilder: (context, index) {
                    var task = controller.taskList[index];
                    return TaskCard(task: task);
                  },
                )),
          ),
        ],
      ),
      
    );
  }
}



