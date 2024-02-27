class UserModel {
  final String name;
  final String email;
  final String imgUrl;
  final String id;

  UserModel(
      {required this.name,
      required this.email,
      required this.imgUrl,
      required this.id});
}

List<UserModel> dummyUsers = [
  UserModel(
    id: '1',
    name: 'Hamza Abu Safiayh',
    email: 'h.j.abusafiayh@gmail.com',
    imgUrl:
        'https://scontent.fjrs29-1.fna.fbcdn.net/v/t39.30808-6/269917029_4484783451643431_3062979791868365791_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=BU8rjm5tw98AX-QKTA4&_nc_ht=scontent.fjrs29-1.fna&oh=00_AfBo5xFvMG_6NmF1mwiDQvAFY3r2iHEGGIGfpyb0sZGLPw&oe=65DBF796',
  ),
];
