class Plant {
  final String title;
  final String imageUrl;
  final String category;
  final double price;
  final double rating;
  final String description;
  final double height;
  final double diameter;
  final double weight;
  final String type;
  final bool isPopular;

  Plant({
    required this.title,
    required this.imageUrl,
    required this.category,
    required this.price,
    required this.rating,
    required this.description,
    required this.height,
    required this.diameter,
    required this.weight,
    required this.type,
    required this.isPopular,
  });
  static List<Plant> getAllPlants() {
    return [
      Plant(
        title: 'Banana',
        imageUrl: 'assets/images/banana.png',
        category: 'Fruit',
        price: 12.99,
        rating: 4.5,
        description: 'A tropical fruit with a distinctive flavor.',
        height: 5.0,
        diameter: 3.0,
        weight: 1.5,
        type: 'Tropical',
        isPopular: true,
      ),
      Plant(
          title: 'Ficus',
          imageUrl: 'assets/images/ficus.png',
          category: 'Houseplant',
          price: 24.99,
          rating: 4.2,
          description: 'An indoor plant with glossy leaves.',
          height: 2.5,
          diameter: 2.0,
          weight: 0.8,
          type: 'Indoor',
          isPopular: false),
      Plant(
          title: 'Monstera',
          imageUrl: 'assets/images/monstera.png',
          category: 'Houseplant',
          price: 34.99,
          rating: 4.8,
          description: 'Known for its unique split leaves and easy care.',
          height: 3.0,
          diameter: 2.5,
          weight: 1.0,
          type: 'Indoor',
          isPopular: true),
      Plant(
        title: 'Nephrolepis',
        imageUrl: 'assets/images/nephrolepis.png',
        category: 'Fern',
        price: 19.99,
        rating: 4.0,
        description: 'A beautiful fern with feathery fronds.',
        height: 1.5,
        diameter: 1.0,
        weight: 0.5,
        type: 'Outdoor',
        isPopular: true,
      ),
      Plant(
        title: 'Ropalostilis',
        imageUrl: 'assets/images/ropalostilis.png',
        category: 'Palm',
        price: 44.99,
        rating: 4.7,
        description: 'Elegant palm tree with arching fronds.',
        height: 6.0,
        diameter: 4.0,
        weight: 2.0,
        type: 'Outdoor',
        isPopular: false,
      ),
      Plant(
        title: 'Sansevier',
        imageUrl: 'assets/images/sansevier.png',
        category: 'Succulent',
        price: 14.99,
        rating: 4.3,
        description: 'Drought-tolerant succulent with fleshy leaves.',
        height: 1.0,
        diameter: 1.0,
        weight: 0.2,
        type: 'Indoor',
        isPopular: true,
      ),
      Plant(
          title: 'Yucca',
          imageUrl: 'assets/images/yucca.png',
          category: 'Outdoor',
          price: 29.99,
          rating: 4.6,
          description: 'Tall and spiky plant suitable for outdoor gardens.',
          height: 4.0,
          diameter: 2.0,
          weight: 1.2,
          type: 'Outdoor',
          isPopular: false),
      Plant(
          title: 'Zamioculcas',
          imageUrl: 'assets/images/zamioculcas.png',
          category: 'Houseplant',
          price: 22.99,
          rating: 4.4,
          description: 'Also known as ZZ plant, requires low maintenance.',
          height: 1.5,
          diameter: 1.5,
          weight: 0.7,
          type: 'Indoor',
          isPopular: true),
    ];
  }
}
