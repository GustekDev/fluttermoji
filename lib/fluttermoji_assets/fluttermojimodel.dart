import 'package:flutter/foundation.dart';
import 'package:fluttermoji/fluttermojiFunctions.dart';

/// Maps attribute keys to the attribute value list
final Map<Attribute, FluttermojiPropertyItem> fluttermojiProperties = {
  Attribute.style: FluttermojiPropertyItem(title: "Style", property: FluttermojiStyle),
  Attribute.topType: FluttermojiPropertyItem(title: "Hair", property: TopType),
  Attribute.accessoriesType:
      FluttermojiPropertyItem(title: "Accessory", property: AccessoriesType),
  Attribute.hairColor:
      FluttermojiPropertyItem(title: "Hair\nColor", property: HairColor),
  Attribute.facialHairType:
      FluttermojiPropertyItem(title: "Facial\nHair", property: FacialHairType),
  Attribute.facialHairColor: FluttermojiPropertyItem(
      title: "F-Hair\nColor", property: FacialHairColor),
  Attribute.clotheType: FluttermojiPropertyItem(title: "Outfit", property: ClotheType),
  Attribute.clotheColor:
      FluttermojiPropertyItem(title: "Outfit\nColor", property: ClotheColor),
  Attribute.eyeType: FluttermojiPropertyItem(title: "Eye", property: EyeType),
  Attribute.eyebrowType:
      FluttermojiPropertyItem(title: "Eyebrow", property: EyebrowType),
  Attribute.mouthType: FluttermojiPropertyItem(title: "Mouth", property: MouthType),
  Attribute.skinColor: FluttermojiPropertyItem(title: "Skin", property: SkinColor),
};

/// Models the metadata needed for rendering widgets in the UI
///
/// 'ExpandedFluttermojiCardItem' has been renamed to Attribute Item
class AttributeItem {
  String title;
  Attribute key;
  String iconAsset;

  AttributeItem(
      {required this.title, required this.key, required this.iconAsset});
}

// This list determines order of Attributes in customizer.
final attributeItems = [
  AttributeItem(key: Attribute.topType,
      iconAsset: "attributeicons/hair.svg",
      title: "Hairstyle"),
  AttributeItem(key: Attribute.hairColor,
      iconAsset: "attributeicons/haircolor.svg",
      title: "Hair Colour"),
  AttributeItem(key: Attribute.facialHairType,
      iconAsset: "attributeicons/beard.svg",
      title: "Facial Hair"),
  AttributeItem(key: Attribute.facialHairColor,
      iconAsset: "attributeicons/beardcolor.svg",
      title: "Facial Hair Colour"),
  AttributeItem(key: Attribute.clotheType,
      iconAsset: "attributeicons/outfit.svg",
      title: "Outfit"),
  AttributeItem(key: Attribute.clotheColor,
      iconAsset: "attributeicons/outfitcolor.svg",
      title: "Outfit Colour"),
  AttributeItem(key: Attribute.eyeType,
      iconAsset: "attributeicons/eyes.svg",
      title: "Eyes"),
  AttributeItem(key: Attribute.eyebrowType,
      iconAsset: "attributeicons/eyebrow.svg",
      title: "Eyebrows"),
  AttributeItem(key: Attribute.mouthType,
      iconAsset: "attributeicons/mouth.svg",
      title: "Mouth"),
  AttributeItem(key: Attribute.skinColor,
      iconAsset: "attributeicons/skin.svg",
      title: "Skin"),
  AttributeItem(key: Attribute.accessoriesType,
      iconAsset: "attributeicons/accessories.svg",
      title: "Accessories"),
];

class FluttermojiPropertyItem extends ChangeNotifier {
  final String title;
  int choice;
  final List<String> property;

  FluttermojiPropertyItem({
    this.title = "Unnamed",
    this.choice = 0,
    property,
  }) : property = property ?? [];
}

const String emptySVGIcon = '''
<svg xmlns="http://www.w3.org/2000/svg"  viewBox="-20 -20 80 80" width="80px" height="80px"><path fill="#dff0fe" stroke="#4788c7" stroke-miterlimit="10" d="M20,1C9.507,1,1,9.507,1,20s8.507,19,19,19s19-8.507,19-19 S30.493,1,20,1z M6,20c0-7.732,6.268-14,14-14c2.963,0,5.706,0.926,7.968,2.496L8.496,27.968C6.926,25.706,6,22.963,6,20z M20,34 c-2.963,0-5.706-0.926-7.968-2.496l19.472-19.472C33.074,14.294,34,17.037,34,20C34,27.732,27.732,34,20,34z"/></svg>
''';


const List<String> FluttermojiStyle = [
  'Transparent',
  'Circle',
];

const List<String> TopType = [
  'Bald',
  'Eyepatch',
  'Hijab',
  'Turban',
  'Hat',
  'I\'m not bald',
  'Flat',
  'from School',
  'Short n waved',
  'Short n curly',
  'The caesar',
  'Another caeser',
  'Short w/ dreads',
  'Short w/ lots of dreads',
  'Bob cut',
  'Bun',
  'Fro',
  'Its not short',
  'Long (Female)',
  'Curvy',
  'Shaggy',
  'Short w/ frizzle',
  'LongHairStraight',
  'LongHairStraight2',
  'LongHairStraightStrand',
  'Curly (Female)',
  'Long w/ dreads',
  'Frida',
  'Fro w/ band',
  'Long w/ shaved sides',
  'Mia Wallace',
  'WinterHat1',
  'WinterHat2',
  'Santa Hat',
  'Santa Hat w/ ears',
];

const List<String> AccessoriesType = [
  'Nothing',
  'PrescriptionGlasses',
  'Another pair of prescriptions',
  'Round',
  'Sunglasses',
  'Wayfarers',
  'Kurt',
];

const List<String> HairColor = [
  'Auburn',
  'Black',
  'Brown',
  'Blonde',
  'BlondeGolden',
  'BrownDark',
  'PastelPink',
  'Platinum',
  'Red',
  'SilverGray',
];

//This is the property I skipped on purpose
const List<String> HatColor = [
  'Black',
  'Blue01',
  'Blue02',
  'Blue03',
  'Gray01',
  'Gray02',
  'Heather',
  'PastelBlue',
  'PastelGreen',
  'PastelOrange',
  'PastelRed',
  'PastelYellow',
  'Pink',
  'Red',
  'White',
];

const List<String> FacialHairType = [
  'Nothing',
  'Full Beard',
  'Beard, Light',
  'Moustache, Fancy',
  'That 80\'s moustache',
];

const List<String> FacialHairColor = [
  'Auburn',
  'Black',
  'Blonde',
  'BlondeGolden',
  'Brown',
  'BrownDark',
  'Platinum',
  'Red',
];

const List<String> ClotheType = [
  'Crew Neck Tee',
  'GraphicShirt',
  'Scoop-neck Tee',
  'ShirtVNeck',
  'Hoodie',
  'CollarSweater',
  'Overall',
  'Blazer + T-Shirt',
  'BlazerSweater',
];

const List<String> ClotheColor = [
  'Blue01',
  'Blue02',
  'PastelYellow',
  'PastelGreen',
  'Gray02',
  'Black',
  'Blue03',
  'Gray01',
  'Heather',
  'PastelBlue',
  'PastelOrange',
  'PastelRed',
  'Pink',
  'Red',
  'White',
];

//Not implemented
const List<String> GraphicType = [
  'Cumbia',
  'Hola',
  'Bat',
  'Deer',
  'Diamond',
  'Pizza',
  'Resist',
  'Selena',
  'Bear',
  'SkullOutline',
  'Skull',
];

const List<String> EyeType = [
  'Default',
  'Happy',
  'Squint',
  'Close',
  'Cry',
  'Dizzy',
  'EyeRoll',
  'Hearts',
  'Side',
  'Surprised',
  'Wink',
  'WinkWacky',
];

const List<String> EyebrowType = [
  'Default',
  'FlatNatural',
  'Angry',
  'AngryNatural',
  'DefaultNatural',
  'RaisedExcited',
  'RaisedExcitedNatural',
  'SadConcerned',
  'SadConcernedNatural',
  'UnibrowNatural',
  'UpDown',
  'UpDownNatural',
];

const List<String> MouthType = [
  'Concerned',
  'Default',
  'Sad',
  'Disbelief',
  'Eating',
  'Grimace',
  'ScreamOpen',
  'Serious',
  'Smile',
  'Tongue',
  'Twinkle',
  'Vomit',
];

const List<String> SkinColor = [
  'White',
  'Peach',
  'Black',
  'Brown',
  'DarkBrown',
  'Yellow',
  'Tanned',
];
