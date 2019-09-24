import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:scanner/core/repository/scan_code_repository_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/qrcode.dart';
import 'package:scanner/features/scan_codes/domain/usecase/get_contact_card_usecase.dart';


class MockScanCodeRepository extends Mock implements IScanCodeRepository {}

void main(){
  IScanCodeRepository mockScanCodeRepository;
  GetContcatCardUC getContcatCardUC;

  setUp((){
    mockScanCodeRepository = MockScanCodeRepository();
    getContcatCardUC = GetContcatCardUC(iScanCodeRepository: mockScanCodeRepository);
  });

  final ContactQrcode contactCard = ContactQrcode(content: [Tuple('test1', 'test2')]);


  test('should return contact card' , () async{
    when(mockScanCodeRepository.getContactCard()).thenAnswer((_) async{
      return Right(contactCard);
    });

    final result = await getContcatCardUC.getContactCard();

    expect(result, Right(contactCard));
    verify(mockScanCodeRepository.getContactCard());

    verifyNoMoreInteractions(mockScanCodeRepository);
  });
}