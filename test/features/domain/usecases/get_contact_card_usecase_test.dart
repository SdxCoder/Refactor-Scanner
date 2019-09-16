import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:scanner/core/repository/contact_card_repository_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/contact_card.dart';
import 'package:scanner/features/scan_codes/domain/usecase/get_contact_card_usecase.dart';

import 'get_rawdata_usecase_test.dart';

class MockContactCardRepository extends Mock implements IContactCardRepository {}

void main(){
  IContactCardRepository mockContactCardRepository;
  GetContcatCardUC getContcatCardUC;

  setUp((){
    mockContactCardRepository = MockContactCardRepository();
    getContcatCardUC = GetContcatCardUC(iContactCardRepository: mockContactCardRepository);
  });

  final ContactCard contactCard = ContactCard(content: [Tuple2('test1', 'test2')]);


  test('should return contact card' , () async{
    when(mockContactCardRepository.getContactCard()).thenAnswer((_) async{
      return Right(contactCard);
    });

    final result = await getContcatCardUC.getContactCard();

    expect(result, Right(contactCard));
    verify(mockContactCardRepository.getContactCard());

    verifyNoMoreInteractions(mockContactCardRepository);
  });
}