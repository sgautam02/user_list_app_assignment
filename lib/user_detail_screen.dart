import 'package:flutter/material.dart';
import 'user_model.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  UserDetailScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Circle avatar for the person icon
              CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              SizedBox(height: 16),

              // User's Name
              Text(
                user.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),

              // User's Username
              Text(
                '@${user.username}',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 24),

              // Divider for better separation
              Divider(thickness: 1.5),

              // Email Information
              ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('Email'),
                subtitle: Text(user.email),
              ),
              Divider(thickness: 1.5),

              // Phone Information
              ListTile(
                leading: Icon(Icons.phone, color: Colors.green),
                title: Text('Phone'),
                subtitle: Text(user.phone),
              ),
              Divider(thickness: 1.5),

              // Website Information
              ListTile(
                leading: Icon(Icons.web, color: Colors.purple),
                title: Text('Website'),
                subtitle: Text(user.website),
              ),
              Divider(thickness: 1.5),

              // Address Information
              ListTile(
                leading: Icon(Icons.location_city, color: Colors.red),
                title: Text('Address'),
                subtitle: Text(
                  '${user.address.street}, ${user.address.suite},\n${user.address.city}, ${user.address.zipcode}',
                ),
              ),
              Divider(thickness: 1.5),

              // Company Information
              ListTile(
                leading: Icon(Icons.business, color: Colors.orange),
                title: Text('Company'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.company.name),
                    Text(user.company.catchPhrase),
                    Text(user.company.bs),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
