/**
 * @author: jiangjunhui
 * @date: 2025/1/24
 */
import 'package:flutter/material.dart';
 
 /*
 // 假设这是一个简单的数据模型
class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      age: json['age'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}


void main() async {
  NetworkService networkService = NetworkService();

  try {
    // 发起 GET 请求获取用户信息
    MyBaseModel<User> result = await networkService.get<User>(
      '/user',
      fromJsonT: (json) => User.fromJson(json as Map<String, dynamic>),
    );

    if (result.isSucess()) {
      print('User name: ${result.data?.name}');
      print('User age: ${result.data?.age}');
    } else {
      print('Request failed: ${result.message}');
    }
  } catch (e) {
    print('Error: $e');
  }
}


// 发起 GET 请求获取用户列表信息
    MyBaseListModel<User> result = await networkService.getList<User>(
      '/users',
      fromJsonT: (json) => User.fromJson(json as Map<String, dynamic>),
    );


T 是基础类型
 MyBaseModel<int> model = MyBaseModel.fromJson(
    jsonMap,
    (json) => json as int, // 直接将 JSON 值转换为 int
  );


  MyBaseModel<String> model = MyBaseModel.fromJson(
    jsonMap,
    (json) => json as String, // 直接将 JSON 值转换为 String
  );
 * */
 
 
 
 
 
 
 
 
 
 
 