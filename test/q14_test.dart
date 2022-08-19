import 'package:dart_live_coding/q14.dart';
import "package:test/test.dart";

void main() {
  group("Check int to Romain", () {
    test("t1", () {
      var input = '''
      <msg id="0" type="104">
        <add p="ssoKey" v="OfVxmanLMchqGPgyGcXOSEdLKRKfyiyCdHViDjxEeaayYuc"/>
        <add p="ssoID" v="25320811"/>
        <add p="table" v="1678"/>
        <add p="seat" v="7"/>
        <add p="langId" v="en_US"/>
        <add p="betFrom" v="MRC"/>
        <add p="vSeats" v="140"/>
      </msg>
            ''';
      expect(XmlHelper.transfer(input).hashCode,600624290);
    });

    test("t2", () {
      var input = '''
<msg id="2183674" type="-511" error="0" ><add p="p1" v="S11" /><add p="b1" v="S6" /><add p="p2" v="S1" /><add p="b2" v="H6" /><add p="p3" v="S2" /><add p="b3" v="H2" /><add p="bp" v="True" /><add p="pp" v="False" /><add p="pdb" v="False" /><add p="bdb" v="False" /><add p="fs" v="False" /><add p="rs" v="BankerWin" /><add p="sc" v="5.4" /><add p="bpt" v="4" /><add p="ppt" v="3" /></msg>
            ''';
      expect(XmlHelper.transfer(input).hashCode,617830012);
    });

    test("t3", () {
      var input = 
'''<msg id="2135303" type="-500"><add p="product" v="Baccarat" /><add p="station" v="102"><msg id="2183674" type="-511" error="0" ><add p="p1" v="S11" /><add p="b1" v="S6" /><add p="p2" v="S1" /><add p="b2" v="H6" /><add p="p3" v="S2" /><add p="b3" v="H2" /><add p="bp" v="True" /><add p="pp" v="False" /><add p="pdb" v="False" /><add p="bdb" v="False" /><add p="fs" v="False" /><add p="rs" v="BankerWin" /><add p="sc" v="5.4" /><add p="bpt" v="4" /><add p="ppt" v="3" /></msg></add><add p="gameID" v="57995376" /><add p="startTime" v="2022/08/18 22:41:17" /><add p="gameTime" v="20" /><add p="packID" v="417235" /><add p="shoe" v="17" /><add p="deals" v="50" /><add p="DealerDisplayName" v="Meness" /><add p="timestamp" v="1660905677510" /><add p="canPlaceSideBet" v="True" /></msg>''';
      var result = XmlHelper.transfer(input);
      expect(XmlHelper.transfer(input).hashCode,1073730269);
    });

    test("t4", () {
      var input = 
'''<msg id="123"></msg>''';
      expect(XmlHelper.transfer(input).hashCode,XmlNodeSample(tag: "msg", attributes: {"id":"123"}, children: []).hashCode);
    });

    test("t5", () {
      var input = 
'''<msg id="123"><man name="leo" age="18"></man></msg>''';
      expect(XmlHelper.transfer(input).hashCode,XmlNodeSample(tag: "msg", attributes: {"id":"123"}, children: [XmlNodeSample(tag: "man", attributes: {"name":"leo","age":"18"}, children: [])]).hashCode);
    });
  });
}
