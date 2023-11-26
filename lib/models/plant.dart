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
  final bool isFavorite;
  int wateringFrequency;

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
    required this.isFavorite,
    required this.wateringFrequency,
  });
  static List<Plant> getAllPlants() {
    return [
      Plant(
        title: 'Banana',
        imageUrl: 'assets/images/banana.png',
        category: 'Fruit',
        price: 12.99,
        rating: 4.5,
        description:
            'A tropical delight with a distinctive flavor, bananas are known for their rich texture and natural sweetness. Ideal for a quick snack or as a nutritious addition to your meals, this tropical fruit brings a touch of the exotic to your table. With a height of 5.0 feet and a diameter of 3.0 feet, these bananas are both delicious and visually appealing. Embrace the tropics with this popular and flavorful fruit!',
        height: 5.0,
        diameter: 3.0,
        weight: 1.5,
        type: 'Tropical',
        isPopular: true,
        isFavorite: false,
        wateringFrequency: 10,
      ),
      Plant(
        title: 'Ficus',
        imageUrl: 'assets/images/ficus.png',
        category: 'Houseplant',
        price: 24.99,
        rating: 4.2,
        description:
            ' Bring the outdoors in with the Ficus houseplant, characterized by its glossy, vibrant leaves. This indoor beauty is not only aesthetically pleasing but also easy to care for. Standing at 2.5 feet tall with a diameter of 2.0 feet, the Ficus adds a touch of greenery to your living space. Priced at \$24.99, it\'s an affordable choice for plant enthusiasts. Make it your favorite, and let the ficus enhance the ambiance of your home.',
        height: 2.5,
        diameter: 2.0,
        weight: 0.8,
        type: 'Indoor',
        isPopular: false,
        isFavorite: true,
        wateringFrequency: 12,
      ),
      Plant(
        title: 'Monstera',
        imageUrl: 'assets/images/monstera.png',
        category: 'Houseplant',
        price: 34.99,
        rating: 4.8,
        description:
            'The Monstera, renowned for its unique split leaves and minimal care requirements, is a stylish addition to any indoor space. Priced at \$34.99, this plant stands at 3.0 feet with a diameter of 2.5 feet. With a high popularity rating, the Monstera is both trendy and timeless. Elevate your indoor garden with this eye-catching beauty that effortlessly combines aesthetics with ease of care.',
        height: 3.0,
        diameter: 2.5,
        weight: 1.0,
        type: 'Indoor',
        isPopular: true,
        isFavorite: true,
        wateringFrequency: 15,
      ),
      Plant(
        title: 'Nephrolepis',
        imageUrl: 'assets/images/nephrolepis.png',
        category: 'Fern',
        price: 19.99,
        rating: 4.0,
        description:
            'Embrace the beauty of nature with the Nephrolepis fern, featuring feathery fronds that add a touch of elegance to your outdoor space. Standing at 1.5 feet tall with a diameter of 1.0 feet, this fern is priced at \$19.99. With a popularity rating that speaks for itself, the Nephrolepis is a must-have for fern enthusiasts seeking both beauty and simplicity in their gardens.',
        height: 1.5,
        diameter: 1.0,
        weight: 0.5,
        type: 'Outdoor',
        isPopular: true,
        isFavorite: false,
        wateringFrequency: 12,
      ),
      Plant(
        title: 'Ropalostilis',
        imageUrl: 'assets/images/ropalostilis.png',
        category: 'Palm',
        price: 44.99,
        rating: 4.7,
        description:
            ' Add a touch of sophistication to your outdoor landscape with the Ropalostilis palm tree. Known for its elegant arching fronds, this palm stands tall at 6.0 feet with a diameter of 4.0 feet. Priced at \$44.99, it\'s a statement piece for any outdoor garden. While it may not be as popular as some, its unique charm makes it a favorite among those who appreciate the beauty of palms.',
        height: 6.0,
        diameter: 4.0,
        weight: 2.0,
        type: 'Outdoor',
        isPopular: false,
        isFavorite: true,
        wateringFrequency: 7,
      ),
      Plant(
        title: 'Sansevier',
        imageUrl: 'assets/images/sansevier.png',
        category: 'Succulent',
        price: 14.99,
        rating: 4.3,
        description:
            'Introduce a touch of resilience to your indoor garden with the Sansevier succulent. With its drought-tolerant nature and fleshy leaves, it\'s both easy to care for and visually appealing. Standing at 1.0 foot tall with a diameter of 1.0 foot, this succulent is priced at \$14.99. Its popularity is well-deserved, making it a sought-after choice for indoor plant enthusiasts.',
        height: 1.0,
        diameter: 1.0,
        weight: 0.2,
        type: 'Indoor',
        isPopular: true,
        isFavorite: true,
        wateringFrequency: 2,
      ),
      Plant(
          title: 'Yucca',
          imageUrl: 'assets/images/yucca.png',
          category: 'Outdoor',
          price: 29.99,
          rating: 4.6,
          description:
              'Make a bold statement in your outdoor garden with the Yucca plant. Known for its tall and spiky appearance, this outdoor beauty stands at 4.0 feet with a diameter of 2.0 feet. Priced at \$29.99, the Yucca brings a touch of the wild to your outdoor landscape. While it might not be the most popular, its unique characteristics make it a standout choice for those seeking a distinctive outdoor plant.',
          height: 4.0,
          diameter: 2.0,
          weight: 1.2,
          type: 'Outdoor',
          isPopular: false,
          isFavorite: false,
          wateringFrequency: 8),
      Plant(
        title: 'Zamioculcas',
        imageUrl: 'assets/images/zamioculcas.png',
        category: 'Houseplant',
        price: 22.99,
        rating: 4.4,
        description:
            'Meet the Zamioculcas, also known as the ZZ plant, a low-maintenance indoor companion. Priced at \$22.99, this houseplant stands at 1.5 feet with a diameter of 1.5 feet. With a popularity rating that speaks to its easy care and aesthetic appeal, the Zamioculcas is a favorite among indoor plant enthusiasts. Add a touch of green to your home with this stylish and hassle-free choice.',
        height: 1.5,
        diameter: 1.5,
        weight: 0.7,
        type: 'Indoor',
        isPopular: true,
        isFavorite: true,
        wateringFrequency: 18,
      ),
    ];
  }
}
