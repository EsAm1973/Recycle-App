import 'package:recycle_app/models/material_info.dart';
import 'package:recycle_app/models/recycling_info.dart';

final List<RecyclingInfo> recyclingInfoList = [
  RecyclingInfo(
    material: 'Plastic',
    symbol: '♳',
    category: 'Plastic',
    subcategories: [
      MaterialInfo(
        material: 'Bottle',
        instructions: [
          'Rinse and crush the bottle.',
          'Remove the cap.',
          'Check for any labels and remove them if possible.',
          'Ensure the bottle is completely dry before recycling.',
        ],
        image: 'https://cdn-icons-png.flaticon.com/512/2745/2745060.png',
        additionalNotes: [
          'Check local guidelines for cap disposal.',
          'Avoid recycling bottles with food or liquid residue.',
          'Separate colored and clear bottles if required by local guidelines.',
        ],
      ),
      MaterialInfo(
        material: 'Container',
        instructions: [
          'Rinse out food residue.',
          'Remove labels if possible.',
          'Ensure the container is dry before recycling.',
          'Flatten the container to save space.',
        ],
        image:
            'https://pactivevergreen.com/assets/65/af/65af38ea-63a0-4f88-9a8a-36a2b9fc5bab/d1200x1200-4S18Y.png',
        additionalNotes: [
          'Flatten to save space in the bin.',
          'Check if the container type is accepted by local recycling programs.',
          'Avoid recycling containers with food remnants or grease.',
        ],
      ),
      MaterialInfo(
        material: 'Bag',
        instructions: [
          'Clean and dry before placing in recycling bin.',
          'Remove any items or residues from the bag.',
          'Do not include bags with food or liquid residue.',
          'Place the bag loosely in the recycling bin, not in another bag.',
        ],
        image: 'https://pngimg.com/uploads/plastic_bag/plastic_bag_PNG4.png',
        additionalNotes: [
          'Avoid recycling plastic bags with food residue.',
          'Check if your local recycling program accepts plastic bags.',
          'Consider reusing bags whenever possible.',
        ],
      ),
    ],
  ),
  RecyclingInfo(
    material: 'Paper',
    symbol: '♼',
    category: 'Paper',
    subcategories: [
      MaterialInfo(
        material: 'Newspaper',
        instructions: [
          'Remove any plastic wrapping and place in bin.',
          'Keep newspapers dry and clean.',
          'Avoid crumpling newspapers excessively.',
          'Separate from other types of paper if required.',
        ],
        image:
            'https://img.freepik.com/premium-photo/beautiful-newspaper-isolated-white-background_787273-44158.jpg?w=740',
        additionalNotes: [
          'Stack neatly to save space.',
          'Check if there are any specific local recycling requirements.',
          'Avoid recycling newspapers with heavy ink or chemical stains.',
        ],
      ),
      MaterialInfo(
        material: 'Magazine',
        instructions: [
          'Remove plastic covers, place in bin.',
          'Keep magazines dry and free of any non-paper materials.',
          'Flatten magazines to save space.',
          'Check for any special recycling instructions for coated paper.',
        ],
        image: 'https://pngimg.com/uploads/magazine/magazine_PNG19.png',
        additionalNotes: [
          'Avoid recycling magazines with glued spines.',
          'Check for local recycling guidelines for glossy paper.',
          'Consider donating magazines if still in good condition.',
        ],
      ),
      MaterialInfo(
        material: 'Cardboard',
        instructions: [
          'Flatten boxes to save space.',
          'Remove any packing tape or other non-paper materials.',
          'Ensure the cardboard is clean and dry.',
          'Separate from other paper types if required.',
        ],
        image: 'https://pngimg.com/uploads/box/box_PNG2.png',
        additionalNotes: [
          'Remove any packing tape.',
          'Check local recycling guidelines for specific cardboard types.',
          'Avoid recycling cardboard with heavy contamination.',
        ],
      ),
    ],
  ),
  RecyclingInfo(
    material: 'Battery',
    symbol: '🔋',
    category: 'Battery',
    subcategories: [
      MaterialInfo(
        material: 'AA Battery',
        instructions: [
          'Take to a recycling point.',
          'Avoid mixing with other waste types.',
          'Check if the battery has any specific disposal requirements.',
          'Keep batteries in a separate container to prevent leakage.',
        ],
        image: 'https://pngimg.com/uploads/battery/battery_PNG102273.png',
        additionalNotes: [
          'Avoid storing in a hot place.',
          'Check if there are local battery recycling programs.',
          'Do not dispose of batteries in regular trash.',
        ],
      ),
      MaterialInfo(
        material: 'Car Battery',
        instructions: [
          'Return to a service station or recycling center.',
          'Handle with care as it contains acid.',
          'Avoid storing in extreme temperatures.',
          'Keep away from flammable materials.',
        ],
        image:
            'https://pngimg.com/uploads/automotive_battery/automotive_battery_PNG12084.png',
        additionalNotes: [
          'Handle with care, contains acid.',
          'Check if your local area has a specific drop-off location for car batteries.',
          'Do not attempt to dismantle the battery yourself.',
        ],
      ),
      MaterialInfo(
        material: 'Rechargeable Battery',
        instructions: [
          'Take to a designated recycling point.',
          'Avoid puncturing or incinerating the battery.',
          'Check for any specific recycling guidelines.',
          'Keep in a separate container to prevent leakage.',
        ],
        image: 'https://pngimg.com/uploads/battery/battery_PNG12030.png',
        additionalNotes: [
          'Do not puncture or incinerate.',
          'Check local recycling programs for rechargeable batteries.',
          'Avoid mixing with other types of batteries.',
        ],
      ),
    ],
  ),
  RecyclingInfo(
    material: 'Electronics',
    symbol: '♼',
    category: 'Electronics',
    subcategories: [
      MaterialInfo(
        material: 'Mobile',
        instructions: [
          'Remove SIM card and wipe data.',
          'Charge the phone to ensure it can be tested.',
          'Check if there are any specific recycling programs.',
          'Remove any external accessories or cases.',
        ],
        image: 'https://pngimg.com/uploads/smartphone/smartphone_PNG8511.png',
        additionalNotes: [
          'Check for mobile recycling programs.',
          'Consider factory reset to protect personal information.',
          'Remove any external storage devices.',
        ],
      ),
      MaterialInfo(
        material: 'Charger',
        instructions: [
          'Wrap cables neatly and place in e-waste bin.',
          'Ensure the charger is free of damage.',
          'Separate cables from other electronics if required.',
          'Check if there are specific recycling instructions for chargers.',
        ],
        image: 'https://pngimg.com/uploads/usb_cable/usb_cable_PNG55.png',
        additionalNotes: [
          'Avoid breaking the cables.',
          'Check if there are local programs for charging devices.',
          'Consider reusing chargers if still functional.',
        ],
      ),
      MaterialInfo(
        material: 'Tablet',
        instructions: [
          'Erase data and remove any external storage.',
          'Ensure the tablet is fully charged before recycling.',
          'Remove any personal accessories or cases.',
          'Check if there are specific recycling instructions for tablets.',
        ],
        image: 'https://pngimg.com/uploads/tablet/tablet_PNG8567.png',
        additionalNotes: [
          'Check for recycling programs.',
          'Factory reset the tablet to protect personal data.',
          'Remove any external storage devices.',
        ],
      ),
      MaterialInfo(
        material: 'Laptop',
        instructions: [
          'Erase data, remove battery if possible.',
          'Ensure the laptop is fully charged before recycling.',
          'Remove any external peripherals.',
          'Check if there are specific recycling programs for laptops.',
        ],
        image: 'https://pngimg.com/uploads/laptop/laptop_PNG5915.png',
        additionalNotes: [
          'Check for e-waste recycling programs.',
          'Consider donating if still functional.',
          'Remove any personal data and external storage devices.',
        ],
      ),
    ],
  ),
  RecyclingInfo(
    material: 'Wood',
    symbol: '🪵',
    category: 'Wood',
    subcategories: [
      MaterialInfo(
        material: 'Pallet',
        instructions: [
          'Check if the pallet can be reused or needs recycling.',
          'Remove any nails and screws if possible.',
          'Ensure the pallet is free of any non-wood materials.',
          'Check if there are specific recycling instructions for pallets.',
        ],
        image: 'https://pngimg.com/uploads/nest_box/nest_box_PNG38.png',
        additionalNotes: [
          'Remove nails and screws if possible.',
          'Check local guidelines for pallet recycling.',
          'Consider repairing or reusing if possible.',
        ],
      ),
      MaterialInfo(
        material: 'Furniture',
        instructions: [
          'Consider donation if still usable.',
          'Remove any non-wood components.',
          'Check if the furniture can be broken down for easier recycling.',
          'Check if there are specific recycling programs for furniture.',
        ],
        image: 'https://pngimg.com/uploads/bench/bench_PNG6.png',
        additionalNotes: [
          'Check for recycling centers that accept wood.',
          'Consider donation if the furniture is still in good condition.',
          'Check if there are any local guidelines for furniture recycling.',
        ],
      ),
      MaterialInfo(
        material: 'Branches',
        instructions: [
          'Cut into smaller pieces for recycling.',
          'Check local guidelines for yard waste disposal.',
          'Ensure branches are free of non-organic materials.',
          'Consider composting smaller branches if possible.',
        ],
        image:
            'https://pngimg.com/uploads/green_leaves/green_leaves_PNG3650.png',
        additionalNotes: [
          'Check local guidelines for yard waste disposal.',
          'Avoid adding branches with metal or plastic parts.',
          'Consider using branches for mulch or composting if appropriate.',
        ],
      ),
    ],
  ),
  RecyclingInfo(
    material: 'Clothes',
    symbol: '👗',
    category: 'Clothes',
    subcategories: [
      MaterialInfo(
        material: 'Shirt',
        instructions: [
          'Wash and donate if in good condition.',
          'Check for any specific donation programs.',
          'Recycle if not suitable for donation.',
          'Ensure the shirt is clean and dry.',
        ],
        image: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5427.png',
        additionalNotes: [
          'Recycle if not suitable for donation.',
          'Check for local donation centers or textile recycling programs.',
          'Avoid recycling clothing with excessive wear or damage.',
        ],
      ),
      MaterialInfo(
        material: 'Pants',
        instructions: [
          'Wash and donate if in good condition.',
          'Check for any specific donation programs.',
          'Recycle if not suitable for donation.',
          'Ensure pants are clean and dry.',
        ],
        image: 'https://pngimg.com/uploads/jeans/jeans_PNG5747.png',
        additionalNotes: [
          'Recycle if not suitable for donation.',
          'Check for local donation centers or textile recycling programs.',
          'Avoid recycling pants with excessive wear or damage.',
        ],
      ),
      MaterialInfo(
        material: 'Shoes',
        instructions: [
          'Donate if in good condition, recycle if not.',
          'Check if there are specific shoe recycling programs.',
          'Ensure shoes are clean and dry before recycling.',
          'Remove any non-shoe components such as laces or inserts.',
        ],
        image:
            'https://pngimg.com/uploads/running_shoes/running_shoes_PNG5817.png',
        additionalNotes: [
          'Check for local shoe recycling programs.',
          'Consider donating shoes if still in wearable condition.',
          'Avoid recycling shoes with severe damage or contamination.',
        ],
      ),
    ],
  ),
  RecyclingInfo(
    material: 'LEDs',
    symbol: '💡',
    category: 'LEDs',
    subcategories: [
      MaterialInfo(
        material: 'Light Bulb',
        instructions: [
          'Take to an e-waste collection point.',
          'Handle with care to avoid breakage.',
          'Remove any non-glass components if possible.',
          'Check if there are specific disposal requirements for the bulb type.',
        ],
        image: 'https://pngimg.com/uploads/bulb/bulb_PNG1247.png',
        additionalNotes: [
          'Handle with care to avoid breakage.',
          'Check for local e-waste disposal programs.',
          'Do not dispose of light bulbs in regular trash.',
        ],
      ),
      MaterialInfo(
        material: 'Strip Light',
        instructions: [
          'Take to a recycling center.',
          'Avoid bending or damaging the strip.',
          'Remove any external components if possible.',
          'Check for specific recycling requirements for strip lights.',
        ],
        image:
            'https://m.media-amazon.com/images/I/61U-HYDYRzL._AC_UF894,1000_QL80_.jpg',
        additionalNotes: [
          'Avoid bending or damaging the strip.',
          'Check local recycling programs for strip lights.',
          'Consider reusing if still functional.',
        ],
      ),
    ],
  ),
  RecyclingInfo(
    material: 'Food',
    symbol: '🍎',
    category: 'Food',
    subcategories: [
      MaterialInfo(
        material: 'Vegetable Waste',
        instructions: [
          'Add to compost bin or pile.',
          'Avoid adding meat or dairy products.',
          'Ensure vegetable waste is free of any non-organic materials.',
          'Check if there are specific composting guidelines in your area.',
        ],
        image: 'https://pngimg.com/uploads/carrot/carrot_PNG4985.png',
        additionalNotes: [
          'Avoid adding meat or dairy products.',
          'Consider composting vegetable scraps at home.',
          'Check local composting programs for additional guidelines.',
        ],
      ),
      MaterialInfo(
        material: 'Fruit Waste',
        instructions: [
          'Add to compost bin or pile.',
          'Avoid adding citrus in large quantities.',
          'Ensure fruit waste is free of any non-organic materials.',
          'Check if there are specific composting guidelines in your area.',
        ],
        image: 'https://pngimg.com/uploads/apple/apple_PNG12405.png',
        additionalNotes: [
          'Avoid adding citrus in large quantities.',
          'Consider composting fruit scraps at home.',
          'Check local composting programs for additional guidelines.',
        ],
      ),
      MaterialInfo(
        material: 'Eggshells',
        instructions: [
          'Crush and add to compost.',
          'Avoid adding shells with any remaining egg contents.',
          'Ensure eggshells are clean and dry before composting.',
          'Check if there are any specific composting guidelines in your area.',
        ],
        image: 'https://pngimg.com/uploads/egg/egg_PNG40783.png',
        additionalNotes: [
          'Helps to balance compost acidity.',
          'Consider crushing eggshells to speed up decomposition.',
          'Check local composting programs for additional guidelines.',
        ],
      ),
    ],
  ),
  RecyclingInfo(
    material: 'Metals',
    symbol: '♼',
    category: 'Metals',
    subcategories: [
      MaterialInfo(
        material: 'Aluminum Can',
        instructions: [
          'Rinse and crush the can.',
          'Ensure the can is free of any non-metal components.',
          'Check if there are specific recycling guidelines for aluminum.',
          'Avoid sharp edges when handling.',
        ],
        image: 'https://i.pngimg.me/thumb/f/720/comrawpixel2327796.jpg',
        additionalNotes: [
          'Avoid sharp edges.',
          'Check local recycling programs for aluminum cans.',
          'Consider crushing cans to save space.',
        ],
      ),
      MaterialInfo(
        material: 'Tin Can',
        instructions: [
          'Rinse and remove the lid.',
          'Ensure the can is free of any non-metal components.',
          'Check if there are specific recycling guidelines for tin cans.',
          'Avoid sharp edges when handling.',
        ],
        image: 'https://pngimg.com/uploads/trash_can/trash_can_PNG18423.png',
        additionalNotes: [
          'Check local recycling guidelines.',
          'Consider flattening cans to save space.',
          'Avoid recycling cans with excessive residue.',
        ],
      ),
      MaterialInfo(
        material: 'Foil',
        instructions: [
          'Clean and ball up for recycling.',
          'Ensure the foil is free of any food or grease.',
          'Consider placing small pieces of foil together to form a larger ball.',
          'Check if there are specific recycling guidelines for foil.',
        ],
        image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG13.png',
        additionalNotes: [
          'Avoid small, loose pieces.',
          'Check local recycling programs for foil guidelines.',
          'Consider reusing foil if still clean and intact.',
        ],
      ),
    ],
  ),
  RecyclingInfo(
    material: 'Glass',
    symbol: '♼',
    category: 'Glass',
    subcategories: [
      MaterialInfo(
        material: 'Bottle',
        instructions: [
          'Rinse and remove cap.',
          'Ensure the bottle is free of any non-glass components.',
          'Check if there are specific recycling guidelines for glass bottles.',
          'Avoid breaking the glass.',
        ],
        image: 'https://pngimg.com/uploads/bottle/bottle_PNG2940.png',
        additionalNotes: [
          'Avoid breaking the glass.',
          'Consider separating colored and clear glass if required.',
          'Check local recycling programs for glass guidelines.',
        ],
      ),
      MaterialInfo(
        material: 'Jar',
        instructions: [
          'Rinse and remove lid.',
          'Ensure the jar is free of any non-glass components.',
          'Check if there are specific recycling guidelines for glass jars.',
          'Remove labels if possible.',
        ],
        image: 'https://pngimg.com/uploads/coffee_jar/coffee_jar_PNG17085.png',
        additionalNotes: [
          'Remove labels if possible.',
          'Check local recycling guidelines for glass jars.',
          'Consider reusing jars if still in good condition.',
        ],
      ),
      MaterialInfo(
        material: 'Glassware',
        instructions: [
          'Do not include broken glass.',
          'Check local guidelines for special disposal if glassware is damaged.',
          'Ensure glassware is free of any non-glass components.',
          'Check if there are specific recycling programs for glassware.',
        ],
        image: 'https://pngimg.com/uploads/glass/wineglass_PNG2835.png',
        additionalNotes: [
          'Check local guidelines for special disposal.',
          'Consider reusing or donating glassware if still usable.',
          'Avoid including broken glass in the recycling bin.',
        ],
      ),
    ],
  ),
];
