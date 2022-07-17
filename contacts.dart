class Contacts {
  String? contactname;
  String? contactnumber;
  String? images;

  Contacts(this.contactname, this.contactnumber, this.images);

  static List<Contacts> contactsdetails = [
    Contacts('Priyanka', '987654321', 'flower.jpeg'),
    Contacts('Aakriti', '8953452179', 'rose.jpeg'),
    Contacts('Abhishek', '8756421974', 'violet.jpeg'),
    Contacts('Chavi', '8956342199', 'white.jpeg'),
    Contacts('Richa', '7856994532', 'lily.jpeg'),
    Contacts('Ashi', '8979956632', 'red.jpeg'),
    Contacts('Akhil', '8745632199', 'pink.jpeg'),
    Contacts('Ashu', '998754321', 'yellow.jpeg'),
    Contacts('Priya', '8956743211', 'orange.jpeg')
  ];
}
