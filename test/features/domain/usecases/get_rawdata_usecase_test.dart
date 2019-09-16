import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:scanner/core/repository/raw_data_repository_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/raw_data.dart';
import 'package:scanner/features/scan_codes/domain/usecase/get_rawdata_usecae.dart';

class MockRawDataRepository extends Mock implements IRawDataRepository{}

void main(){
  IRawDataRepository mockRawDataRepository;
  GetRawDataUC getRawDataUC;


  setUp((){
    mockRawDataRepository = MockRawDataRepository();
    getRawDataUC = GetRawDataUC(iRawDataRepository: mockRawDataRepository);
  });

  final RawData rawData = RawData(data: "test");

  test('Should return Raw Data', () async{
    when(mockRawDataRepository.getRawData()).thenAnswer((_) async {
      return Right(rawData);
    });

    final result = await  getRawDataUC.getRawData();

    expect(result, Right(rawData));
    verify(mockRawDataRepository.getRawData());

    verifyNoMoreInteractions(mockRawDataRepository);
  });
  
}