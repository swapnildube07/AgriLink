import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void manageHttpResponse({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200: //successfull request
      onSuccess();
      break;
    case 400: //bad request
      showSnackBar(context, json.decode(response.body)['msg']);
      break;
    case 500: //several error
      showSnackBar(context, json.decode(response.body)['error']);
      break;
    case 201: //resource was created successfully
      onSuccess();
      break;
  }
}

void showSnackBar(BuildContext context, String title) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(title)));
}
