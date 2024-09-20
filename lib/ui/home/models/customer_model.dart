import '../../../core/core.dart';

class CustomerModel {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String address;
  final String houseNumber;
  final String city;
  final String imageUrl;

  CustomerModel({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.houseNumber,
    required this.city,
    required this.imageUrl,
  });
}

final List<CustomerModel> mockCustomers = [
  CustomerModel(
    fullName: 'Angga Risky',
    email: 'wepanda@gmail.com',
    phoneNumber: '0822 0819 9688',
    address: 'Setra Duta Palima',
    houseNumber: 'A5 Hook',
    city: 'Bandung',
    imageUrl: Assets.images.imgProfile.path,
  ),
  CustomerModel(
    fullName: 'Fadhil Prawira',
    email: 'fadhilprawira87@gmail.com',
    phoneNumber: '0812 3456 7890',
    address: 'JL Prof Soedarto',
    houseNumber: 'Blok C11',
    city: 'Semarang',
    imageUrl: Assets.images.imgProfile.path,
  )
];
