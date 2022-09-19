import 'fluttermoji_assets/clothes/clothes.dart';
import 'fluttermoji_assets/face/eyebrow/eyebrow.dart';
import 'fluttermoji_assets/face/eyes/eyes.dart';
import 'fluttermoji_assets/face/mouth/mouth.dart';
import 'fluttermoji_assets/face/nose/nose.dart';
import 'fluttermoji_assets/fluttermojimodel.dart';
import 'fluttermoji_assets/skin.dart';
import 'fluttermoji_assets/style.dart';
import 'fluttermoji_assets/top/accessories/accessories.dart';
import 'fluttermoji_assets/top/facialHair/facialHair.dart';
import 'fluttermoji_assets/top/hairStyles/hairStyle.dart';

enum Attribute {
  topType,
  hairColor,
  facialHairType,
  facialHairColor,
  accessoriesType,
  clotheType,
  eyeType,
  eyebrowType,
  mouthType,
  skinColor,
  clotheColor,
  style,
  graphicType,
}

class Fluttermoji {
  final Map<Attribute, int> selectedAttributes;

  int get topType => selectedAttributes[Attribute.topType] ?? 4;

  int get accessoriesType => selectedAttributes[Attribute.accessoriesType] ?? 0;

  int get hairColor => selectedAttributes[Attribute.hairColor] ?? 1;

  int get facialHairType => selectedAttributes[Attribute.facialHairType] ?? 0;

  int get facialHairColor => selectedAttributes[Attribute.facialHairColor] ?? 1;

  int get clotheType => selectedAttributes[Attribute.clotheType] ?? 4;

  int get eyeType => selectedAttributes[Attribute.eyeType] ?? 0;

  int get eyebrowType => selectedAttributes[Attribute.eyebrowType] ?? 0;

  int get mouthType => selectedAttributes[Attribute.mouthType] ?? 1;

  int get skinColor => selectedAttributes[Attribute.skinColor] ?? 0;

  int get clotheColor => selectedAttributes[Attribute.clotheColor] ?? 1;

  int get style => selectedAttributes[Attribute.style] ?? 0;

  int get graphicType => selectedAttributes[Attribute.graphicType] ?? 0;

  void set(Attribute attribute, int value) {
    selectedAttributes[attribute] = value;
  }

  int get(Attribute attribute) {
    return selectedAttributes[attribute] ?? 0;
  }

  Fluttermoji.defaultEmoji() : selectedAttributes = Map();

  /// Decode your string containing the attributes to a SVG and render it
  /// by enclosing this string with a SvgPicture.string()
  String getSVG() {
    String _fluttermojiStyle =
        fluttermojiStyle[getFluttermojiProperty(Attribute.style, style)]!;
    String _clothe = Clothes.generateClothes(
        clotheType: getFluttermojiProperty(Attribute.clotheType, clotheType),
        clColor: getFluttermojiProperty(Attribute.clotheColor, clotheColor))!;
    String _facialhair = FacialHair.generateFacialHair(
        facialHairType:
            getFluttermojiProperty(Attribute.facialHairType, facialHairType),
        fhColor:
            getFluttermojiProperty(Attribute.facialHairColor, facialHairColor))!;
    String _mouth =
        mouth['${getFluttermojiProperty(Attribute.mouthType, mouthType)}'];
    String _nose = nose['Default'];
    String _eyes = eyes['${getFluttermojiProperty(Attribute.eyeType, eyeType)}'];
    String _eyebrows =
        eyebrow['${getFluttermojiProperty(Attribute.eyebrowType, eyebrowType)}'];
    String _accessory = accessories[
        getFluttermojiProperty(Attribute.accessoriesType, accessoriesType)];
    String _hair = HairStyle.generateHairStyle(
        hairType: getFluttermojiProperty(Attribute.topType, topType),
        hColor: getFluttermojiProperty(Attribute.hairColor, hairColor))!;
    String _skin = skin[getFluttermojiProperty(Attribute.skinColor, skinColor)];
    String _completeSVG = '''
<svg width="264px" height="280px" viewBox="0 0 264 280" version="1.1"
xmlns="http://www.w3.org/2000/svg"
xmlns:xlink="http://www.w3.org/1999/xlink">
<desc>Fluttermoji on pub.dev</desc>
<defs>
<circle id="path-1" cx="120" cy="120" r="120"></circle>
<path d="M12,160 C12,226.27417 65.72583,280 132,280 C198.27417,280 252,226.27417 252,160 L264,160 L264,-1.42108547e-14 L-3.19744231e-14,-1.42108547e-14 L-3.19744231e-14,160 L12,160 Z" id="path-3"></path>
<path d="M124,144.610951 L124,163 L128,163 L128,163 C167.764502,163 200,195.235498 200,235 L200,244 L0,244 L0,235 C-4.86974701e-15,195.235498 32.235498,163 72,163 L72,163 L76,163 L76,144.610951 C58.7626345,136.422372 46.3722246,119.687011 44.3051388,99.8812385 C38.4803105,99.0577866 34,94.0521096 34,88 L34,74 C34,68.0540074 38.3245733,63.1180731 44,62.1659169 L44,56 L44,56 C44,25.072054 69.072054,5.68137151e-15 100,0 L100,0 L100,0 C130.927946,-5.68137151e-15 156,25.072054 156,56 L156,62.1659169 C161.675427,63.1180731 166,68.0540074 166,74 L166,88 C166,94.0521096 161.51969,99.0577866 155.694861,99.8812385 C153.627775,119.687011 141.237365,136.422372 124,144.610951 Z" id="path-5"></path>
</defs>
<g id="Fluttermoji" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-825.000000, -1100.000000)" id="Fluttermoji/Circle">
<g transform="translate(825.000000, 1100.000000)">''' +
        _fluttermojiStyle +
        '''
<g id="Mask"></g>
<g id="Fluttermoji" stroke-width="1" fill-rule="evenodd">
<g id="Body" transform="translate(32.000000, 36.000000)">

<mask id="mask-6" fill="white">
<use xlink:href="#path-5"></use>
</mask>
<use fill="#D0C6AC" xlink:href="#path-5"></use>''' +
        _skin +
        '''<path d="M156,79 L156,102 C156,132.927946 130.927946,158 100,158 C69.072054,158 44,132.927946 44,102 L44,79 L44,94 C44,124.927946 69.072054,150 100,150 C130.927946,150 156,124.927946 156,94 L156,79 Z" id="Neck-Shadow" opacity="0.100000001" fill="#000000" mask="url(#mask-6)"></path></g>''' +
        _clothe +
        '''<g id="Face" transform="translate(76.000000, 82.000000)" fill="#000000">''' +
        _mouth +
        _facialhair +
        _nose +
        _eyes +
        _eyebrows +
        _accessory +
        '''</g>''' +
        _hair +
        '''</g></g></g></g></svg>''';
    return _completeSVG;
  }

  String getFluttermojiProperty(Attribute type, int value) {
    return fluttermojiProperties[type]!.property.elementAt(value);
  }

  Fluttermoji.fromJson(Map<String, dynamic> json)
      : selectedAttributes = Map.fromEntries(
            Attribute.values.map((e) => MapEntry(e, json[e.toString()] ?? 0)));

  static Map<String, dynamic> toJson(Fluttermoji value) => Map.fromEntries(
      Attribute.values.map((e) => MapEntry(e.toString(), value.get(e))));

  bool operator ==(Object other) =>
      other is Fluttermoji &&
      topType == other.topType &&
      accessoriesType == other.accessoriesType &&
      hairColor == other.hairColor &&
      facialHairType == other.facialHairType &&
      facialHairColor == other.facialHairColor &&
      clotheType == other.clotheType &&
      eyeType == other.eyeType &&
      eyebrowType == other.eyebrowType &&
      mouthType == other.mouthType &&
      skinColor == other.skinColor &&
      clotheColor == other.clotheColor &&
      style == other.style &&
      graphicType == other.graphicType;

  int get hashCode => Object.hash(
        topType,
        accessoriesType,
        hairColor,
        facialHairType,
        facialHairColor,
        clotheType,
        eyeType,
        eyebrowType,
        mouthType,
        skinColor,
        clotheColor,
        style,
        graphicType,
      );
}
