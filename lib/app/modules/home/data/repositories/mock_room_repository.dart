import 'package:innvitee_app/app/modules/home/data/models/date_model.dart';
import 'package:innvitee_app/app/modules/home/data/models/room_model.dart';
import 'package:innvitee_app/app/modules/home/data/repositories/i_room_repository.dart';

class MockRoomRepository implements IRoomRepository {
  @override
  Future<List<RoomModel>> fetch() async {
    return [
      RoomModel(
          name: 'A2',
          address: 'Av. Paulista 500 - São Paulo',
          direction: 'Leste',
          image: 'assets/images/sala_1.jpg',
          maxAmountPeople: 4,
          attributes: [
            'Wi-Fi',
            'Quadro',
          ],
          dates: [
            DateModel(
                day: '16',
                month: 'Outubro',
                startTime: '12:30',
                endTime: '14:30'),
            DateModel(
                day: '12',
                month: 'Outubro',
                startTime: '10:00',
                endTime: '12:00'),
            DateModel(
                day: '11',
                month: 'Outubro',
                startTime: '16:00',
                endTime: '18:00'),
          ]),
      RoomModel(
          name: 'E5',
          address: 'Av. Paulista 500 - São Paulo',
          direction: 'Oeste',
          image: 'assets/images/sala_2.jpg',
          maxAmountPeople: 12,
          attributes: [
            'Wi-Fi',
            'Quadro',
            'Ar-condicionado',
            'Projetor',
            'TV',
          ],
          dates: [
            DateModel(
                day: '17',
                month: 'Outubro',
                startTime: '12:30',
                endTime: '14:00'),
            DateModel(
                day: '18',
                month: 'Outubro',
                startTime: '12:30',
                endTime: '14:00'),
          ]),
      RoomModel(
          name: 'B3',
          address: 'Av. Paulista 500 - São Paulo',
          direction: 'Oeste',
          image: 'assets/images/sala_3.jpg',
          maxAmountPeople: 16,
          attributes: [
            'Quadro',
            'TV',
            'Ar-condicionado',
            'Wi-Fi'
          ],
          dates: [
            DateModel(
                day: '20',
                month: 'Outubro',
                startTime: '10:30',
                endTime: '12:30'),
            DateModel(
                day: '20',
                month: 'Outubro',
                startTime: '10:30',
                endTime: '12:30'),
            DateModel(
                day: '19',
                month: 'Outubro',
                startTime: '08:30',
                endTime: '10:30'),
            DateModel(
                day: '17',
                month: 'Outubro',
                startTime: '12:30',
                endTime: '14:30'),
          ]),
      RoomModel(
          name: 'C4',
          address: 'Av. Paulista 500 - São Paulo',
          direction: 'Leste',
          image: 'assets/images/sala_4.jpg',
          maxAmountPeople: 16,
          attributes: [
            'TV',
            'Projetor',
          ],
          dates: [
            DateModel(
                day: '16',
                month: 'Outubro',
                startTime: '15:30',
                endTime: '17:00'),
            DateModel(
                day: '16',
                month: 'Outubro',
                startTime: '07:30',
                endTime: '09:00'),
          ]),
      RoomModel(
          name: 'D2',
          address: 'Av. Paulista 500 - São Paulo',
          direction: 'Leste',
          image: 'assets/images/sala_5.jpg',
          maxAmountPeople: 4,
          attributes: [
            'Wi-Fi',
            'Quadro',
            'TV',
            'Projetor',
          ],
          dates: [
            DateModel(
                day: '16',
                month: 'Outubro',
                startTime: '12:30',
                endTime: '14:00'),
            DateModel(
                day: '19',
                month: 'Outubro',
                startTime: '12:30',
                endTime: '14:00'),
            DateModel(
                day: '16',
                month: 'Outubro',
                startTime: '12:30',
                endTime: '14:00'),
          ]),
      RoomModel(
          name: 'B1',
          address: 'Av. Paulista 500 - São Paulo',
          direction: 'Oeste',
          image: 'assets/images/sala_6.jpg',
          maxAmountPeople: 8,
          attributes: [
            'Wi-Fi',
            'Quadro',
            'Ar-condicionado',
          ],
          dates: [
            DateModel(
                day: '18',
                month: 'Outubro',
                startTime: '08:30',
                endTime: '10:30'),
            DateModel(
                day: '18',
                month: 'Outubro',
                startTime: '14:30',
                endTime: '16:30'),
          ]),
      RoomModel(
          name: 'C3',
          address: 'Av. Paulista 500 - São Paulo',
          direction: 'Leste',
          image: 'assets/images/sala_7.jpg',
          maxAmountPeople: 16,
          attributes: [
            'TV',
            'Ar-condicionado',
          ],
          dates: [
            DateModel(
                day: '15',
                month: 'Outubro',
                startTime: '16:30',
                endTime: '18:30'),
            DateModel(
                day: '16',
                month: 'Outubro',
                startTime: '12:30',
                endTime: '14:00'),
          ]),
      RoomModel(
          name: 'F2',
          address: 'Av. Paulista 500 - São Paulo',
          direction: 'Oeste',
          image: 'assets/images/sala_8.jpg',
          maxAmountPeople: 12,
          attributes: [
            'Wi-Fi',
            'Ar-condicionado',
            'Projetor',
          ],
          dates: [
            DateModel(
                day: '14',
                month: 'Outubro',
                startTime: '15:30',
                endTime: '17:00'),
          ]),
    ];
  }
}
