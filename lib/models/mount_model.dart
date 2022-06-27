// Models

class MountModel {
  String path;
  String name;
  String location;
  String description;
  MountModel({
    this.path = '',
    this.name = '',
    this.location = '',
    this.description = '',
  });
}

final List<MountModel> mountItems = [
  MountModel(
    path:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5jRV6X7UmXlEOAUAoVAmdmHAbXqdR_pWQCA&usqp=CAU',
    name: 'Mount Kenya',
    description:
        'Mount Kenya is the second-highest in Africa, and Kenya’s highest peak. This extinct volcano is located in the middle of the country, in Kenya National Park',
    location: 'Nyeri, Kenya',
  ),
  MountModel(
      path:
          'https://cdn.britannica.com/33/153433-050-F76BDF75/Sunrise-Mount-Kilimanjaro-Tanzania.jpg',
      name: 'Mount Kilimanjaro',
      description:
          'Situated in Northern Tanzania close to the Kenya border, Mount Kilimanjaro – also known as ‘the roof of Africa’ or simply as ‘Kili’ – is the tallest mountain in Africa and the highest freestanding mountain in the world, with the summit about 4,900 meters from its base',
      location: 'Nothern Tanzania'),
  MountModel(
    path: 'https://miro.medium.com/max/711/1*VjL4ekLpMiY4rKH2KQmGTw.jpeg',
    name: 'Mount Stanley',
    description:
        'The third largest mountain in Africa is UNESCO World Heritage Site Mount Stanley, located in the vast Central African Ruwenzori Range which forms the border between the Democratic Republic of Congo and Uganda.',
    location: 'Uganda',
  ),
  MountModel(
    path:
        'https://upload.wikimedia.org/wikipedia/commons/4/43/Mount_meru_with_snow%2C_Arusha_Region%2C_Tanzania.jpg',
    name: 'Mount Meru',
    description:
        'Tanzania’s second-highest mountain, Mount Meru, is located 60 kilometers west of Mount Kilimanjaro, surrounded by the safari hot-spot Arusha National Park. The lower slopes rising from the savanna are fertile forests, home to abundant wildlife including leopards, monkeys, and over 400 bird species.',
    location: 'Tanzania',
  ),
  MountModel(
    path:
        'https://simienpark.org/wp-content/uploads/2017/10/simien-landscape-small.jpg',
    name: 'Mount Semien',
    description:
        'In the Horn of Africa lie the Ethiopian Highlands – a range of rugged mountains that form the largest elevated area in the continent, stretching across Ethiopia and Eritrea, and cut in two by the Great Rift Valley.',
    location: 'Ethiopia',
  ),
];
