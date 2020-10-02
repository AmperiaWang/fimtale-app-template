import 'package:flutter_i18n/loaders/decoders/json_decode_strategy.dart';
import 'package:xml2json/xml2json.dart';

import './base_decode_strategy.dart';

class XmlDecodeStrategy extends BaseDecodeStrategy {
  Xml2Json _transformer = new Xml2Json();
  final String rootObject;

  XmlDecodeStrategy({this.rootObject = "root"});

  @override
  get fileExtension => "xml";

  @override
  get decodeFunction => _transformer.parse;

  @override
  Map decodeContent(final String content) {
    decodeFunction(content);
    final Map jsonMap =
        JsonDecodeStrategy().decodeContent(_transformer.toParker());
    return jsonMap[this.rootObject];
  }
}
