import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:scanner/core/error/exceptions.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scandata_local_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scandata_scanner_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';
import 'package:scanner/features/scan_codes/data/repository/scan_code_reposotory.dart';
import 'package:scanner/features/scan_codes/domain/entities/contact_card.dart';


class MockScannerDataSource extends Mock implements IScannerDataSource {}

class MockScanDataLocalDataDource extends Mock
    implements IScanDataLocalDataSource {}

void main() {
  MockScannerDataSource mockScannerDataSource;
  MockScanDataLocalDataDource mockScanDataLocalDataDource;

  ScanCodeRepostory scanCodeRepostory;

  setUp(() {
    mockScannerDataSource = MockScannerDataSource();
    mockScanDataLocalDataDource = MockScanDataLocalDataDource();
    scanCodeRepostory = ScanCodeRepostory(
        iScanDataLocalDataSource: mockScanDataLocalDataDource,
        iScanDataScannerDataSource: mockScannerDataSource);
  });

  final content = [Tuple("test", "test")];
  final ContactCardModel contactCardModel = ContactCardModel(content: content);

  group('Get Contact Card', () {
    test('should return ContactCard when call to scanner data source is made',
        () async {
      when(mockScannerDataSource.getContactCard()).thenAnswer((_) async {
        return contactCardModel;
      });

      final result = await scanCodeRepostory.getContactCard();

      verify(mockScannerDataSource.getContactCard());
      expect(result, Right(contactCardModel));
      verify(mockScanDataLocalDataDource
          .saveContactToLocalStorage(contactCardModel));
    });

    group('Exceptions', () {
      test(
          'should return Failure when call to scanner data source throws Camera Denied exception',
          () async {
        when(mockScannerDataSource.getContactCard())
            .thenThrow(CameraAccessDeniedException());

        final result = await scanCodeRepostory.getContactCard();

        verifyZeroInteractions(mockScanDataLocalDataDource);
        verify(mockScannerDataSource.getContactCard());
        expect(result, Left(CameraAccessDeniedFailure()));
      });

      test(
          'should return Failure when call to scanner data source throws Wrong Format exception',
          () async {
        when(mockScannerDataSource.getContactCard())
            .thenThrow(WrongFormatException());

        final result = await scanCodeRepostory.getContactCard();
        verifyZeroInteractions(mockScanDataLocalDataDource);
        verify(mockScannerDataSource.getContactCard());
        expect(result, Left(WrongFormatFailure()));
      });

      test(
          'should return Failure when call to scanner data source throws Unknown exception',
          () async {
        when(mockScannerDataSource.getContactCard())
            .thenThrow(UnknownException());

        final result = await scanCodeRepostory.getContactCard();

        verifyZeroInteractions(mockScanDataLocalDataDource);
        verify(mockScannerDataSource.getContactCard());
        expect(result, Left(UnknownFailure()));
      });
    });
  });

    final data = "test";
    final rawData = RawDataModel(data: data);

   group('Get Raw Data', () {
    test('should return RawData when call to scanner data source is made',
        () async {
      when(mockScannerDataSource.getRawData()).thenAnswer((_) async {
        return rawData;
      });

      final result = await scanCodeRepostory.getRawData();

      verify(mockScannerDataSource.getRawData());
      expect(result, Right(rawData));
      verify(mockScanDataLocalDataDource
          .saveRawToLocalStorage(rawData));
    });

    group('Exceptions ', () {
      test(
          'should return Failure when call to scanner data source throws Camera Denied exception',
          () async {
        when(mockScannerDataSource.getRawData())
            .thenThrow(CameraAccessDeniedException());

        final result = await scanCodeRepostory.getRawData();

        verifyZeroInteractions(mockScanDataLocalDataDource);
        verify(mockScannerDataSource.getRawData());
        expect(result, Left(CameraAccessDeniedFailure()));
      });

      test(
          'should return Failure when call to scanner data source throws Wrong Format exception',
          () async {
        when(mockScannerDataSource.getRawData())
            .thenThrow(WrongFormatException());

        final result = await scanCodeRepostory.getRawData();
        verifyZeroInteractions(mockScanDataLocalDataDource);
        verify(mockScannerDataSource.getRawData());
        expect(result, Left(WrongFormatFailure()));
      });

      test(
          'should return Failure when call to scanner data source throws Unknown exception',
          () async {
        when(mockScannerDataSource.getRawData())
            .thenThrow(UnknownException());

        final result = await scanCodeRepostory.getRawData();

        verifyZeroInteractions(mockScanDataLocalDataDource);
        verify(mockScannerDataSource.getRawData());
        expect(result, Left(UnknownFailure()));
      });
    });
  });

  
}
