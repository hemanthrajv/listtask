import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  var countList = List<int>.generate(100, (index) => 0);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countList.length,
      itemBuilder: (context, index) => ListItemWidget(
        count: countList[index],
        onPressed: () => setState(() {
          countList[index]++;
        }),
      ),
    );
  }
}

class ListItemWidget extends StatelessWidget {
  final int count;
  final VoidCallback onPressed;

  const ListItemWidget({
    required this.count,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Text(count.toString()),
          MaterialButton(
            onPressed: onPressed,
            child: const Text("+"),
          ),
        ],
      ),
    );
  }
}
