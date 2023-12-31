import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as location;
//import 'package:geojson/geojson.dart';
import 'package:provider/provider.dart';
import 'dart:async' show Future;
//import 'dart:convert';

class LocationProvider extends ChangeNotifier {
  LatLng? _currentLocation;

  LatLng? get currentLocation => _currentLocation;

  void updateCurrentLocation(LatLng location) {
    _currentLocation = location;
    notifyListeners();
  }
}

class FullMapPage extends StatefulWidget {
  const FullMapPage({super.key,});

  @override
  State<FullMapPage> createState() => _FullMapPageState();
}

class _FullMapPageState extends State<FullMapPage> {
  final LatLng _initialCameraPosition = const LatLng(20.5937, 78.9629);
  late GoogleMapController _controller;
  late LocationProvider _locationProvider;
  final location.Location _location = location.Location();
  MapType _mapType = MapType.normal;
  bool _centerOnLocation = true;

  // Define a list of LatLng points for your polyline
  List<LatLng> polylineCoordinates01 = [
    const LatLng(6.802005081000061, 80.80740669200003),
    const LatLng(6.801823849000073, 80.80672845300006),
    const LatLng(6.801420697000026, 80.80551243400004),
    const LatLng(6.8009163420000505, 80.80428419900005),
    const LatLng(6.79995685800003, 80.80237044600005),
    const LatLng(6.7988277650000555, 80.80072668800005),
    const LatLng(6.798248085000068, 80.79848806800004),
    const LatLng(6.7979653340000255, 80.79646490400006),
    const LatLng(6.79675514500002, 80.79474744300006),
    const LatLng(6.797341321000033, 80.79228051700005),
    const LatLng(6.79848512600006, 80.79106617300005),
    const LatLng(6.799578517000043, 80.78909110000006),
    const LatLng(6.800317661000065, 80.78735939800004),
    const LatLng(6.80069020600007, 80.78584576400004),
    const LatLng(6.801833670000065, 80.78334668400004),
    const LatLng(6.803304745000048, 80.78153279600008),
    const LatLng(6.803195609000056, 80.78054613000006),
    const LatLng(6.802553050000029, 80.77857001100006),
    const LatLng(6.802167782000026, 80.77613004000006),
    const LatLng(6.801757406000036, 80.77478260700008),
    const LatLng(6.800893391000045, 80.77292809400006),
    const LatLng(6.800435715000049, 80.77104250600007),
    const LatLng(6.7995479190000765, 80.76944929000007),
    const LatLng(6.7989827560000435, 80.76763267800004),
    const LatLng(6.798989898000059, 80.76692409500004),
    const LatLng(6.799102638000022, 80.76730041100006),
    const LatLng(6.799071495000021, 80.76745268200006),
    const LatLng(6.799067811000043, 80.76761224900008),
    const LatLng(6.799064194000039, 80.76776891700007),
    const LatLng(6.799073238000062, 80.76793556400008),
    const LatLng(6.799080058000072, 80.76815796200003),
    const LatLng(6.799076036000031, 80.76827731700007),
    const LatLng(6.79909645500004, 80.76841238100008),
    const LatLng(6.799118677000024, 80.76848773900008),
    const LatLng(6.79915055500004, 80.76862811000007),
    const LatLng(6.79918284300004, 80.76870623200006),
    const LatLng(6.799239693000061, 80.76870911800006),
    const LatLng(6.799292691000062, 80.76881911100008),
    const LatLng(6.7993005310000285, 80.76890065200007),
    const LatLng(6.799342385000045, 80.76897336600007),
    const LatLng(6.7993839940000385, 80.76904565500007),
    const LatLng(6.799415040000042, 80.76909959300008),
    const LatLng(6.799435661000075, 80.76913542000005),
    const LatLng(6.7994664810000245, 80.76918896600006),
    const LatLng(6.799529311000072, 80.76927393700004),
    const LatLng(6.799583303000077, 80.76931945100006),
    const LatLng(6.799601837000068, 80.76937594000003),
    const LatLng(6.799641805000022, 80.76945455400005),
    const LatLng(6.79967887600003, 80.76958090400007),
    const LatLng(6.79970583100004, 80.76968171600004),
    const LatLng(6.79970927100004, 80.76979100800008),
    const LatLng(6.79974727900003, 80.76988470100008),
    const LatLng(6.799769240000046, 80.77003453700007),
    const LatLng(6.799803562000022, 80.77014539300006),
    const LatLng(6.7998183220000215, 80.77022865600009),
    const LatLng(6.799849331000075, 80.77037327300008),
    const LatLng(6.799876882000035, 80.77043084900004),
    const LatLng(6.799909409000065, 80.77054610500005),
    const LatLng(6.799943545000076, 80.77064054800007),
    const LatLng(6.799979389000043, 80.77071483400005),
    const LatLng(6.800014965000059, 80.77078856500003),
    const LatLng(6.80007183400005, 80.77086458500008),
    const LatLng(6.800121945000058, 80.77090125500007),
    const LatLng(6.800178122000034, 80.77097712600005),
    const LatLng(6.800214547000053, 80.77103401600004),
    const LatLng(6.800261639000041, 80.77108992400008),
    const LatLng(6.80030014700003, 80.77112660700004),
    const LatLng(6.800346838000053, 80.77118206100005),
    const LatLng(6.800374220000037, 80.77121908200007),
    const LatLng(6.80041787600004, 80.77129333300007),
    const LatLng(6.800453099000038, 80.77134850800007),
    const LatLng(6.80048812800004, 80.77140337700007),
    const LatLng(6.800522965000027, 80.77145794300003),
    const LatLng(6.800550832000056, 80.77155971700006),
    const LatLng(6.800573104000023, 80.77162549000008),
    const LatLng(6.800625953000065, 80.77169825800007),
    const LatLng(6.800644765000072, 80.77178187600003),
    const LatLng(6.8006795190000275, 80.77182957500008),
    const LatLng(6.800704979000045, 80.77193285700008),
    const LatLng(6.800756312000033, 80.77200303300003),
    const LatLng(6.800777173000029, 80.77206529000006),
    const LatLng(6.80082466500005, 80.77215241000005),
    const LatLng(6.800856749000047, 80.77220712500008),
    const LatLng(6.800869624000029, 80.77231154000003),
    const LatLng(6.800876733000052, 80.77238799000008),
    const LatLng(6.800883760000033, 80.77246355200003),
    const LatLng(6.800906588000032, 80.77256193200003),
    const LatLng(6.8009307930000205, 80.77264890700008),
    const LatLng(6.800939520000043, 80.77270917300007),
    const LatLng(6.800966550000055, 80.77277738400005),
    const LatLng(6.800981615000069, 80.77280279100006),
    const LatLng(6.801003600000058, 80.77289427800008),
    const LatLng(6.801030926000067, 80.77295682900007),
    const LatLng(6.801062650000063, 80.77304441600006),
    const LatLng(6.801067777000071, 80.77311559400005),
    const LatLng(6.801103014000034, 80.77318107300005),
    const LatLng(6.801116476000061, 80.77325568700007),
    const LatLng(6.801138339000033, 80.77333433300004),
    const LatLng(6.801151425000057, 80.77340711500005),
    const LatLng(6.801168528000062, 80.77345999500005),
    const LatLng(6.801202320000073, 80.77352202600008),
    const LatLng(6.801232124000023, 80.77359950400006),
    const LatLng(6.801257512000063, 80.77365296600004),
    const LatLng(6.801290999000059, 80.77371044300008),
    const LatLng(6.801303487000041, 80.77373676800005),
    const LatLng(6.801324173000069, 80.77380628800006),
    const LatLng(6.801369327000032, 80.77384972800007),
    const LatLng(6.801413883000066, 80.77393098800007),
    const LatLng(6.8014502280000215, 80.77396932500005),
    const LatLng(6.801477772000055, 80.77404055900007),
    const LatLng(6.8014895560000355, 80.77406553200007),
    const LatLng(6.801528954000048, 80.77412360100004),
    const LatLng(6.801572370000031, 80.77416500200007),
    const LatLng(6.801591777000056, 80.77419365500003),
    const LatLng(6.801622035000037, 80.77424783900005),
    const LatLng(6.801643313000056, 80.77430040300004),
    const LatLng(6.801676979000035, 80.77433986600005),
    const LatLng(6.801697846000025, 80.77439161200004),
    const LatLng(6.801718527000048, 80.77444289200008),
    const LatLng(6.801734090000025, 80.77451029900004),
    const LatLng(6.801756972000021, 80.77458117200007),
    const LatLng(6.801752294000039, 80.77465456000004),
    const LatLng(6.801782157000048, 80.77472777500003),
    const LatLng(6.801787124000043, 80.77476774500008),
    const LatLng(6.80180735700003, 80.77489498600005),
    const LatLng(6.801815806000036, 80.77494927100008),
    const LatLng(6.8018256010000755, 80.77499890500007),
    const LatLng(6.801842787000055, 80.77505116600008),
    const LatLng(6.8018640920000735, 80.77508980600004),
    const LatLng(6.8018692830000305, 80.77515122800008),
    const LatLng(6.801868164000041, 80.77518017100004),
    const LatLng(6.8018964940000615, 80.77522093700009),
    const LatLng(6.801901441000041, 80.77528089200007),
    const LatLng(6.80194793000004, 80.77534113600007),
    const LatLng(6.801949877000027, 80.77538371300005),
    const LatLng(6.801977015000034, 80.77542556000003),
    const LatLng(6.801988823000045, 80.77543940800007),
    const LatLng(6.80202573400004, 80.77552234100006),
    const LatLng(6.802063944000054, 80.77557685800008),
    const LatLng(6.8020838620000745, 80.77559031700008),
    const LatLng(6.802087647000064, 80.77566899100003),
    const LatLng(6.802093025000033, 80.77572043100008),
    const LatLng(6.802118104000044, 80.77578398400004),
    const LatLng(6.802113645000077, 80.77585934400008),
    const LatLng(6.802123598000037, 80.77589661000007),
    const LatLng(6.802128692000053, 80.77594588500006),
    const LatLng(6.802149812000039, 80.77599476500006),
    const LatLng(6.802153056000066, 80.77600691100008),
    const LatLng(6.802352764000034, 80.77705267100004),
    const LatLng(6.802447879000056, 80.77720142900006),
    const LatLng(6.802452268000025, 80.77752350600008),
    const LatLng(6.802498409000066, 80.77782029200006),
    const LatLng(6.802532617000054, 80.77804049700006),
    const LatLng(6.802543809000042, 80.77832905500009),
    const LatLng(6.802636808000045, 80.77846792700007),
    const LatLng(6.802674858000046, 80.77866823100004),
    const LatLng(6.802710267000066, 80.77887356300005),
    const LatLng(6.802807685000062, 80.77909339900003),
    const LatLng(6.802861448000044, 80.77923717200008),
    const LatLng(6.802936072000023, 80.77951704100008),
    const LatLng(6.802988145000029, 80.77966078400004),
    const LatLng(6.803070097000045, 80.77981294100005),
    const LatLng(6.80312772700006, 80.78003195300005),
    const LatLng(6.803172924000023, 80.78018739200007),
    const LatLng(6.803227274000051, 80.78040890400007),
    const LatLng(6.803328402000034, 80.78049713500008),
    const LatLng(6.803327007000064, 80.78077517300005),
    const LatLng(6.803372627000044, 80.78092114200007),
    const LatLng(6.803417957000022, 80.78106617700007),
    const LatLng(6.803357903000062, 80.78140474500003),
    const LatLng(6.803285803000051, 80.78159882800009),
    const LatLng(6.803133040000034, 80.78192260400004),
    const LatLng(6.802971523000053, 80.78218444100008),
    const LatLng(6.802826516000039, 80.78232279600007),
    const LatLng(6.802682710000056, 80.78246000500008),
    const LatLng(6.802523548000067, 80.78255284200003),
    const LatLng(6.802362487000039, 80.78273815900008),
    const LatLng(6.802203313000064, 80.78292130500006),
    const LatLng(6.80209823000007, 80.78304221300004),
    const LatLng(6.80192379500005, 80.78335978200005),
    const LatLng(6.801794708000045, 80.78355152700004),
    const LatLng(6.801618394000059, 80.78387907300004),
    const LatLng(6.801468284000066, 80.78413532700006),
    const LatLng(6.801348940000025, 80.78439102600004),
    const LatLng(6.801232360000029, 80.78464021300005),
    const LatLng(6.801091507000024, 80.78495963900008),
    const LatLng(6.801001644000053, 80.78513524400006),
    const LatLng(6.800866208000059, 80.78544233700006),
    const LatLng(6.800761489000024, 80.78574421800005),
    const LatLng(6.8006499490000465, 80.78598442500004),
    const LatLng(6.800607527000068, 80.78618589500007),
    const LatLng(6.800485982000055, 80.78653181500005),
    const LatLng(6.800452910000047, 80.78670636900006),
    const LatLng(6.8004087540000455, 80.78699005200008),
    const LatLng(6.800320825000028, 80.78724329700003),
    const LatLng(6.800235115000021, 80.78749041100008),
    const LatLng(6.800147606000053, 80.78774194500005),
    const LatLng(6.800075479000043, 80.78794848800004),
    const LatLng(6.799955632000035, 80.78814204200006),
    const LatLng(6.799867017000054, 80.78832366800003),
    const LatLng(6.799769664000053, 80.78852920100007),
    const LatLng(6.799682289000032, 80.78870894000005),
    const LatLng(6.799566318000075, 80.78889750900004),
    const LatLng(6.799490252000055, 80.78912061600005),
    const LatLng(6.7994198860000665, 80.78932817100008),
    const LatLng(6.799353507000035, 80.78952098100007),
    const LatLng(6.799252721000073, 80.78974303200005),
    const LatLng(6.799164036000036, 80.78985972800007),
    const LatLng(6.799039531000062, 80.79008193500005),
    const LatLng(6.798970556000029, 80.79021385500005),
    const LatLng(6.798804690000054, 80.79042061800004),
    const LatLng(6.7987296990000345, 80.79057493900007),
    const LatLng(6.798642783000048, 80.79076620000006),
    const LatLng(6.798534841000048, 80.79095119500005),
    const LatLng(6.798418598000069, 80.79109235100003),
    const LatLng(6.798325731000034, 80.79123535400004),
    const LatLng(6.798213601000043, 80.79136881000005),
    const LatLng(6.798124420000022, 80.79150440800004),
    const LatLng(6.7980258650000565, 80.79159942000007),
    const LatLng(6.797938565000038, 80.79173246000005),
    const LatLng(6.797809632000053, 80.79185648500004),
    const LatLng(6.797715646000029, 80.79194331000008),
    const LatLng(6.797620750000021, 80.79203437000007),
    const LatLng(6.797525453000048, 80.79212827800006),
    const LatLng(6.797472416000062, 80.79223005400007),
    const LatLng(6.79737814300006, 80.79239635500005),
    const LatLng(6.79732630500007, 80.79249589400007),
    const LatLng(6.797253647000048, 80.79266520400006),
    const LatLng(6.797209937000048, 80.79281010500006),
    const LatLng(6.797142141000052, 80.79303408200008),
    const LatLng(6.797098262000077, 80.79317919800008),
    const LatLng(6.797044738000068, 80.79335632400006),
    const LatLng(6.79699154900004, 80.79353221400004),
    const LatLng(6.796967541000072, 80.79367984000004),
    const LatLng(6.796933369000044, 80.79386000000005),
    const LatLng(6.796893587000056, 80.79399109800005),
    const LatLng(6.796866055000066, 80.79414941100003),
    const LatLng(6.79683951100003, 80.79423727400007),
    const LatLng(6.796813388000032, 80.79439001100008),
    const LatLng(6.796804916000042, 80.79448380200006),
    const LatLng(6.796772926000074, 80.79465250500004),
    const LatLng(6.796795492000058, 80.79477130300006),
    const LatLng(6.796819213000049, 80.79488491600006),
    const LatLng(6.796871574000022, 80.79496861500007),
    const LatLng(6.796923613000047, 80.79505179800003),
    const LatLng(6.796957570000075, 80.79512891200005),
    const LatLng(6.797026737000067, 80.79521663800006),
    const LatLng(6.7970699930000364, 80.79526305700006),
    const LatLng(6.797149232000038, 80.79531808800004),
    const LatLng(6.797192978000055, 80.79536201600007),
    const LatLng(6.797262199000045, 80.79544490100005),
    const LatLng(6.797305593000033, 80.79548845500005),
    const LatLng(6.79734658700005, 80.79559427200007),
    const LatLng(6.797407689000067, 80.79564114100003),
    const LatLng(6.7974686220000535, 80.79568787800008),
    const LatLng(6.797519098000066, 80.79576311900007),
    const LatLng(6.797559002000071, 80.79586633000008),
    const LatLng(6.797647233000021, 80.79588853300004),
    const LatLng(6.797714471000063, 80.79596714000007),
    const LatLng(6.797756739000022, 80.79600849200006),
    const LatLng(6.79782340600002, 80.79608644500007),
    const LatLng(6.797844191000024, 80.79618283600007),
    const LatLng(6.797866767000073, 80.79627403800004),
    const LatLng(6.797869572000025, 80.79636530900007),
    const LatLng(6.797872143000063, 80.79645631200003),
    const LatLng(6.797885713000028, 80.79651856900006),
    const LatLng(6.797988033000024, 80.79659548800004),
    const LatLng(6.798018959000046, 80.79666007500003),
    const LatLng(6.798027422000075, 80.79677928900009),
    const LatLng(6.79805800500003, 80.79684290500006),
    const LatLng(6.798147636000067, 80.79727725600003),
    const LatLng(6.798135479000052, 80.79743397700008),
    const LatLng(6.79812522900005, 80.79769400700008),
    const LatLng(6.79812878000007, 80.79790161900007),
    const LatLng(6.798147891000042, 80.79815979500006),
    const LatLng(6.798194448000061, 80.79831729600005),
    const LatLng(6.798183782000024, 80.79856663200007),
    const LatLng(6.798229660000061, 80.79872122500007),
    const LatLng(6.798260839000022, 80.79892378700004),
    const LatLng(6.798300807000032, 80.79909229900005),
    const LatLng(6.798385395000025, 80.79920870900008),
    const LatLng(6.7984260410000275, 80.79937022200005),
    const LatLng(6.798510982000039, 80.79948137500008),
    const LatLng(6.7985955190000595, 80.79959200200005),
    const LatLng(6.798606089000032, 80.79974837700007),
    const LatLng(6.7987186440000755, 80.79985980000004),
    const LatLng(6.798773201000074, 80.79996639200004),
    const LatLng(6.798881166000058, 80.80008732900006),
    const LatLng(6.798919604000048, 80.80024026700005),
    const LatLng(6.799012707000031, 80.80031240800008),
    const LatLng(6.799036281000042, 80.80050668100006),
    const LatLng(6.799047164000058, 80.80064928900003),
    const LatLng(6.7990984870000375, 80.80075549100007),
    const LatLng(6.7991617840000345, 80.80091023300008),
    const LatLng(6.799199661000046, 80.80105327600006),
    const LatLng(6.799279240000033, 80.80115654100007),
    const LatLng(6.799373291000052, 80.80121663000006),
    const LatLng(6.7994522120000624, 80.80131918100005),
    const LatLng(6.799491553000053, 80.80137029100007),
    const LatLng(6.799537050000026, 80.80156331700005),
    const LatLng(6.7995868220000375, 80.80166277200004),
    const LatLng(6.799688957000058, 80.80177308100008),
    const LatLng(6.799721914000031, 80.80191535200004),
    const LatLng(6.799781679000034, 80.80205982000007),
    const LatLng(6.799856704000035, 80.80216140400006),
    const LatLng(6.799879178000026, 80.80225180900004),
    const LatLng(6.800005686000077, 80.80236312100004),
    const LatLng(6.800037381000038, 80.80250005900007),
    const LatLng(6.800069282000038, 80.80270318300006),
    const LatLng(6.800135233000049, 80.80281720600004),
    const LatLng(6.800226596000073, 80.80293542200008),
    const LatLng(6.800285383000073, 80.80299580400003),
    const LatLng(6.800334127000042, 80.80314775200003),
    const LatLng(6.800437991000024, 80.80322913800006),
    const LatLng(6.80052385700003, 80.80335231800007),
    const LatLng(6.80054328500006, 80.80350130300008),
    const LatLng(6.800625731000025, 80.80362742100004),
    const LatLng(6.800621088000071, 80.80376559100006),
    const LatLng(6.800726740000073, 80.80389657600006),
    const LatLng(6.800744483000074, 80.80404156600008),
    const LatLng(6.800825236000037, 80.80416313400008),
    const LatLng(6.800882339000054, 80.80427571500007),
    const LatLng(6.8009798920000435, 80.80435610200004),
    const LatLng(6.801013795000074, 80.80445828700005),
    const LatLng(6.801050645000032, 80.80455401100005),
    const LatLng(6.801117077000072, 80.80470031700008),
    const LatLng(6.8011928650000755, 80.80476619400008),
    const LatLng(6.801251862000072, 80.80486763900007),
    const LatLng(6.801300345000072, 80.80504669600003),
    const LatLng(6.801358539000034, 80.80514648800005),
    const LatLng(6.8013357740000515, 80.80530476100006),
    const LatLng(6.801391683000077, 80.80540590900006),
    const LatLng(6.801382475000025, 80.80553200000008),
    const LatLng(6.801424982000071, 80.80565977400005),
    const LatLng(6.801461464000056, 80.80574528500006),
    const LatLng(6.801520353000058, 80.80583694300003),
    const LatLng(6.801556405000042, 80.80592157000007),
    const LatLng(6.801583138000069, 80.80607651900004),
    const LatLng(6.801641123000024, 80.80616640700003),
    const LatLng(6.801676515000054, 80.80624936300006),
    const LatLng(6.801719086000048, 80.80636829600007),
    const LatLng(6.8017773240000565, 80.80645496000005),
    const LatLng(6.801844261000042, 80.80657438100008),
    const LatLng(6.801854639000055, 80.80670534100005),
    const LatLng(6.801937679000048, 80.80679095700003),
    const LatLng(6.801962969000044, 80.80689059800005),
    const LatLng(6.8019734180000455, 80.80701808800006),
    const LatLng(6.801960845000053, 80.80714013200003),
    const LatLng(6.801948796000033, 80.80726055200006),
    const LatLng(6.80195733100004, 80.80729253600003)
    // Add more points as needed 
  ];

  List<LatLng> polylineCoordinates02 = [
    const LatLng(7.0809558615927495, 80.02046294561433), // Point 1
    const LatLng(7.080413079258999, 80.02045041073958), // Point 2
    // Add more points as needed
  ];

  // Create a Polyline object with the polyline details
  final Set<Polyline> _polyline01 = {};
  final Set<Polyline> _polyline02 = {};

  @override
  void initState() {
    super.initState();
    _locationProvider = Provider.of<LocationProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            GoogleMap(
              //zoomControlsEnabled: false,
              myLocationButtonEnabled: false,
              mapType: _mapType,
              initialCameraPosition: CameraPosition(
                target: _initialCameraPosition,
              ),
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
              polylines: _polyline01.union(_polyline02), // Use the _polylines set here
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width - (w * 0.18),
                top: MediaQuery.of(context).size.height - (h / 2.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: _onCurrentLocationButtonPressed,
                    child: const Icon(Icons.my_location),
                  ),
                  const SizedBox(height: 5),
                  FloatingActionButton(
                    onPressed: _onMapTypeButtonPressed,
                    child: const Icon(Icons.layers),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController cntrl) {
    _controller = cntrl;
    _location.onLocationChanged.listen((l) {
      if (_locationProvider.currentLocation == null) {
        _locationProvider
            .updateCurrentLocation(LatLng(l.latitude!, l.longitude!));
      }
      if (_locationProvider.currentLocation != null && _centerOnLocation) {
        _controller.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: _locationProvider.currentLocation!, zoom: 19),
        ));
        // Update the polylines
        _updatePolyline01();
        _updatePolyline02();
        _centerOnLocation = false;
      }
    });
  }

  // Function to update polyline 01
  void _updatePolyline01() {
    setState(() {
      _polyline01.clear();
      _polyline01.add(Polyline(
        polylineId: const PolylineId('polyline_01'),
        color: Colors.red,
        width: 10,
        points: polylineCoordinates01,
      ));
    });
  }

  // Function to update polyline 02
  void _updatePolyline02() {
    setState(() {
      _polyline02.clear();
      _polyline02.add(Polyline(
        polylineId: const PolylineId('polyline_02'),
        color: Colors.red,
        width: 10,
        points: polylineCoordinates02,
      ));
    });
  }

  void _onCurrentLocationButtonPressed() async {
    location.LocationData? currentLocation = await _getLocation();
    if (currentLocation != null) {
      _locationProvider.updateCurrentLocation(
          LatLng(currentLocation.latitude!, currentLocation.longitude!));
      _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(currentLocation.latitude!, currentLocation.longitude!),
        zoom: 16,
      )));
    }
  }

  void _onMapTypeButtonPressed() {
    if (_mapType == MapType.normal) {
      _onMapTypeChanged(MapType.satellite);
    } else if (_mapType == MapType.satellite) {
      _onMapTypeChanged(MapType.hybrid);
    } else {
      _onMapTypeChanged(MapType.normal);
    }
  }

  void _onMapTypeChanged(MapType type) {
    setState(() {
      _mapType = type;
    });
  }

  Future<location.LocationData?> _getLocation() async {
    try {
      return await _location.getLocation();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
