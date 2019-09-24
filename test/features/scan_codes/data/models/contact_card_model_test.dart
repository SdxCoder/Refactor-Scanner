import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/domain/entities/qrcode.dart';

void main() {
  ContactQrcodeModel contactCardModel;

  setUp(() {
    contactCardModel = ContactQrcodeModel(content: [Tuple('test', 'test')]);
  });

  test('should create ContactCardModel', () async {
    final model = ContactQrcodeModel(content: [Tuple('test', 'test')]);

    expect(model, contactCardModel);
  });

  final model2 = ContactQrcodeModel(content: [Tuple('test', 'test'), Tuple('test', 'test')]);

  group('to json', () {
    test('should create ContactCardModel from json string', () async {
      final result = model2.toJson();
      print(result);

      final expected = {
        "content": [
          {"key": "test", "value": "test"},
          {"key": "test", "value": "test"}
        ]
      };

      expect(result, expected);
    });
  });

  final model = ContactQrcodeModel(
      content: [Tuple('test', 'test'), Tuple('test1', 'test1')]);

  group('from json', () {
    test('should create ContactCardModel from json string', () async {
      // arrange
      final map = model.toJson();
      final String jsonString = json.encode(map);

      // act
      final decodedMap = json.decode(jsonString);
      final result = ContactQrcodeModel.fromJson(decodedMap);

      // assert
      expect(result, model);
    });
  });
}
