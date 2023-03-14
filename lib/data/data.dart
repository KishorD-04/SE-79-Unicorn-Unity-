import 'package:pro/models/plant.dart';

final _plant1 = Plant(
    name: 'Onion',
    price: 18,
    category: 'Vegetable plant',
    description:
    'Choose a sunny spot with loose soil. Compacted or rocky soil will hinder bulb growth. Also, avoid planting where other Allium species have been in the past few years. Pests and diseases that target the plants can linger in the soil. Container growth is also an option if you do not have proper garden conditions.',
    imageUrl: 'assets/onion.png',
    height: 140,
    specifications: [
      'Suitable for Outside',
      'Leaf color: green',
      'Bloom Time: 	Summer',
      'Height: 12–18 in. tall, 6–12 in. wide'
    ]);

final _plant2 = Plant(
    name: 'Tomato',
    price: 20,
    category: 'Vegetable plant',
    description:
    'Whether you want to grow tomato plants in a garden bed or a container, choose a spot with at least six to eight hours of direct sunlight daily. Ideally, the garden soil should be well-draining, fertile, and have a pH of 5.8 to 7, but tomato plants grow in all types of soil except clay. Garden soil may be too heavy for growing plants in containers, so add compost or perlite or use potting soil.',
    imageUrl: 'assets/Tomato.png',
    height: 130,
    specifications: [
      'Suitable for outside',
      'Leaf color: green',
      'Bloom Time: Summer',
      'Height: 180 cm'
    ]);

final _plant3 = Plant(
    name: 'Lily Plant',
    price: 20,
    category: 'Indoor plant',
    description:
    'A beloved houseplant, peace lilies are renowned for their easy care. The peace lily is hardy, forgiving, and will even let you know when it is thirsty: Just look for the telltale droop. The name is a bit of a misnomer: Peace lilies are not true lilies (plant family Liliaceae), but a member of the Araceae family that also includes colocasia, or elephant ear. Otherwise, in terms of growing and care, peace — as in calm and tranquility — is pretty much what you get.',
    imageUrl: 'assets/lily.png',
    height: 70,
    specifications: [
      'Suitable for inside',
      'Leaf color: green',
      'Bloom Time: Spring',
    ]);

final _plant4 = Plant(
    name: 'Beans Seeds',
    price: 15,
    category: 'Outdoor plant',
    description:
    'The common bean plant (Phaseolus vulgaris) includes an enormous number of varieties of pod/snap beans that have edible pods, but also shell beans and dry beans, in which the inner seeds are removed from inedible pods before they are prepared and eaten. Most home gardeners will be raising the pod/snap type, which includes both pole bean varieties that grow long vines as well as low-growing bush beans. Most varieties of pod/snap beans are green, but there are also purple, red, yellow, and streaked beans. Common beans are several inches long and either round or flattened in shape..',
    imageUrl: 'assets/BeansSeeds.png',
    height: 70,
    specifications: [
      'Not suitable for inside',
      'Leaf color: green',
      'Bloom Time: Spring',
      'Height: 2–15 ft. tall, 2–3 ft. wide'
    ]);

final _plant5 = Plant(
    name: 'Watermelon',
    price: 22,
    category: 'Outside plant',
    description:
    'Watermelon is an annual fruiting vine that requires a relatively long, hot growing season to produce the iconic summertime treat familiar to picnickers everywhere. Watermelon is one member of the very large Cucurbitaceae family of plants, a group that includes most of the vining vegetables, including cucumbers, squash, and pumpkins. The watermelons grown in domestic gardens are all cultivars of the Citrillus lunatus species. Watermelon has been in cultivation for many centuries, thought to have originated almost 5,000 years ago in the Kalahari Desert of Africa. Seeds were brought to the U.S. by enslaved Africans. Thanks to hybridizing, there are over 100 cultivated varieties of watermelons, in assorted sizes, shapes, and colors.',
    imageUrl: 'assets/Watermelon.png',
    height: 150,
    specifications: [
      'Suitable for outside',
      'Leaf color: green',
      'Sun Exposure	Full sun',
      'Height: 9 to 18 inches tall; 10- to 15-foot vine spread'
    ]);

final _plant6 = Plant(
    name: 'Dragon Tree ',
    price: 16,
    category: 'Indoor plant',
    description:
    'Dracaena marginata, more commonly known as a dragon tree, is an attractive plant with green sword-like, red-edged leaves. Native to Madagascar, the eye-catching spiky tree is known as a great entry plant for household gardeners—it\'s easy to care for, drought-tolerant, and nearly indestructible.',
    imageUrl: 'assets/Dragon.png',
    height: 110,
    specifications: [
      'Suitable for inside',
      'Leaf color: green',
      'Bloom Time:	Spring',
      'Height: 15–20 ft. tall, 3–10 ft. wide'
    ]);

final List<Plant> popularPlants = [
  _plant1,
  _plant2,
];

final List<Plant> trendingPlants = [
  _plant6,
  _plant5,
  _plant4,
  _plant1,
  _plant2,
  _plant3,
];

final List<String> categoryList = [
  'Popular',
  'Vegetable Plants',
  'Flowers',
  'Seeds',
  'Others',
];