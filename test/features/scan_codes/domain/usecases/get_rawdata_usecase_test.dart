import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:scanner/core/repository/scan_code_repository_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/barcode.dart';
import 'package:scanner/features/scan_codes/domain/usecase/get_rawdata_usecae.dart';

class MockScanCodeRepository extends Mock implements IScanCodeRepository{}

void main(){
  IScanCodeRepository mockScanCodeRepository;
  GetRawDataUC getRawDataUC;


  setUp((){
    mockScanCodeRepository = MockScanCodeRepository();
    getRawDataUC = GetRawDataUC(iScanCodeRepository: mockScanCodeRepository);
  });

  final Barcode rawData = Barcode(barcode: "1");

  test('Should return Raw Data', () async{
    when(mockScanCodeRepository.getRawData()).thenAnswer((_) async {
      return Right(rawData);
    });

    final result = await  getRawDataUC.getRawData();

    expect(result, Right(rawData));
    verify(mockScanCodeRepository.getRawData());

    verifyNoMoreInteractions(mockScanCodeRepository);
  });
  
}