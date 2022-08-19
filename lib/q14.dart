import 'package:equatable/equatable.dart';
// Convert string into XmlNodeSample
// <msg id="123"></msg>
// result will be XmlNodeSample(tag: "msg", attributes: {"id":"123"}, children: [])



// <msg id="123"><man name="leo" age="18"></man></msg>
// result will be XmlNodeSample(tag: "msg", attributes: {"id":"123"}, children: [XmlNodeSample(tag: "man", attributes: {"name":"leo","age":"18"}, children: [])])


class XmlHelper {
  static XmlNodeSample transfer(String message) {
    return XmlNodeSample();
  }
}

class XmlNodeSample extends Equatable {
  final String? tag;
  final Map<String, String>? attributes;
  final List<XmlNodeSample>? children;

  const XmlNodeSample({
    this.tag,
    this.attributes,
    this.children,
  });

  @override
  List<Object?> get props {
    return [
      tag,
      attributes,
      children,
    ];
  }
}
