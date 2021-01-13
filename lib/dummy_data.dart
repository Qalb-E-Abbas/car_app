import 'package:flutter/material.dart';

import './models/category.dart';
import './models/model.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Hatchback',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Sedan',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'MPV',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'SUV',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Crossover',
    color: Colors.blue,
  ),
];

const DUMMY_MODALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Maruti Suzuki Swift',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ndtvimg.com/i/2016-04/maruti-suzuki-swift_827x510_71460371276.jpg',
    Specifications: [
      'Ex-showroom Price Delhi ₹4,80,000.00\n'
          'Fuel Type Petrol\n'
          'Engine Displacement	1197 cc\n'
          'Power	83 bhp @ 6000 RPM\n'
          'Torque	115 Nm @ 4000 RPM\n'
    ],
    details: [
      'A hatchback is a car type with a rear door that opens upwards. They typically feature a four-door configuration, excluding the rear door. '
          'However, two-door hatchbacks are not uncommon.'
    ],
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Maruti Suzuki Ciaz',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ndtvimg.com/i/2015-11/maruti-suzuki-ciaz-827_827x510_61447071611.jpg',
    Specifications: [
      'Ex-showroom Price Delhi ₹4,80,000.00\n'
          'Fuel Type Petrol\n'
          'Engine Displacement	1197 cc\n'
          'Power	83 bhp @ 6000 RPM\n'
          'Torque	115 Nm @ 4000 RPM\n'
    ],
    details: [
      'Out of the different types of cars, a sedan (US) or a saloon (UK) is traditionally '
          'defined as a car with four doors and a typical boot/ trunk. A slightly technical detail '
          'is that it usually features a 3-box configuration with each of the boxes categorically used '
          'for the engine, passenger, and cargo'

    ],

  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Datsun GO+',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ndtvimg.com/i/2014-12/datsun-go-plus-6_650x420_81418998774.jpg',
    Specifications: [
      'Ex-showroom Price Delhi ₹4,80,000.00\n'
          'Fuel Type Petrol\n'
          'Engine Displacement	1197 cc\n'
          'Power	83 bhp @ 6000 RPM\n'
          'Torque	115 Nm @ 4000 RPM\n'
    ],
    details: [
      'A multi-purpose vehicle (MPV) or multi-utility vehicle (MUV) are commonly known as people carriers. '
          'They are designed to offer enhanced space and comfort for passengers with two or three rows of '
          'seating and large doors. '
          'The third row on MPVs/ MUVs can generally be reconfigured.'
    ],

  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Land Rover Discovery Sport',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://i.ndtvimg.com/i/2016-08/land-rover-discovery-sport-off-road-experience_827x510_41470486633.jpg',
    Specifications: [
      'Ex-showroom Price Delhi ₹4,80,000.00\n'
          'Fuel Type Petrol\n'
          'Engine Displacement	1197 cc\n'
          'Power	83 bhp @ 6000 RPM\n'
          'Torque	115 Nm @ 4000 RPM\n'
    ],
    details: [
      'Conventionally, a sports utility vehicle (SUV) is a big car built '
          'on a body-on-frame chassis, sports increased ground clearance and offers off-roading '
          'capabilities to a certain extent. With that said, the aforementioned definition of an '
          'SUV has blurred over time and often includes both off-roaders and soft-roaders.'
    ],
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Volvo S60 Cross Country',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ndtvimg.com/i/2016-03/volvo-s60-cross-country-827_827x510_51456830614.jpg',
    Specifications: [
      'Ex-showroom Price Delhi ₹4,80,000.00\n'
          'Fuel Type Petrol\n'
          'Engine Displacement	1197 cc\n'
          'Power	83 bhp @ 6000 RPM\n'
          'Torque	115 Nm @ 4000 RPM\n'
    ],
    details: [
      'A simple, and common, definition of a crossover would be that it is a vehicle '
          'that combines the features of an SUV and a hatchback. Crossover vehicles offer '
          'soft-roading capabilities and are constructed like a car - '
          'they use unibody construction instead of the body-on-frame platform used in SUVs.'
    ],
  ),


];
