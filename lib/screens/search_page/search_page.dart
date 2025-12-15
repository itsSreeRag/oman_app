import 'package:flutter/material.dart';

class AppChatPage extends StatelessWidget {
  const AppChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchField(controller: searchController),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chat_outlined, size: 60, color: Colors.grey),
                      SizedBox(height: 12),
                      Text(
                        'No chats yet',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Start a conversation to see messages here',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;

  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: "Search products...",
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
