import 'package:flutter/material.dart';

class Mapa extends StatefulWidget {
  static final String routeName = 'Mapa';
  Mapa({Key? key}) : super(key: key);

  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  double cpwidth = 350;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CustomPaint(
            size: Size(cpwidth, (cpwidth * 0.812464265294454).toDouble()),
            painter: RPSCustomPainter(),
          ),
        ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4241396, 0);
    path_0.cubicTo(
        size.width * 0.1531141,
        size.height * 0.01073168,
        size.width * -0.004995546,
        size.height * 0.2249652,
        size.width * 0.0001204581,
        size.height * 0.5110507);
    path_0.cubicTo(
        size.width * 0.005133350,
        size.height * 0.7913696,
        size.width * 0.1771493,
        size.height * 0.9945435,
        size.width * 0.4247367,
        size.height * 0.9998971);
    path_0.lineTo(size.width * 0.4247367, size.height * 0.9895348);
    path_0.lineTo(size.width * 0.5759369, size.height * 0.9895348);
    path_0.lineTo(size.width * 0.5759369, size.height * 0.9998971);
    path_0.lineTo(size.width * 0.5875910, size.height * 0.9998971);
    path_0.cubicTo(
        size.width * 0.8559272,
        size.height * 1.006558,
        size.width * 1.051352,
        size.height * 0.6886783,
        size.width * 0.9880036,
        size.height * 0.3789391);
    path_0.lineTo(size.width * 0.9856129, size.height * 0.3667275);
    path_0.cubicTo(
        size.width * 0.9330534,
        size.height * 0.1309568,
        size.width * 0.7903180,
        size.height * 0.01702464,
        size.width * 0.5756383,
        0);
    path_0.lineTo(size.width * 0.5756383, size.height * 0.009621507);
    path_0.lineTo(size.width * 0.4241396, size.height * 0.009621507);
    path_0.lineTo(size.width * 0.4241396, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4592646, size.height * 0.9318362);
    path_1.lineTo(size.width * 0.4592646, size.height * 0.9507246);
    path_1.lineTo(size.width * 0.4763301, size.height * 0.9507246);
    path_1.lineTo(size.width * 0.4763301, size.height * 0.9310928);
    path_1.lineTo(size.width * 0.5233350, size.height * 0.9318362);
    path_1.lineTo(size.width * 0.5233350, size.height * 0.9507246);
    path_1.lineTo(size.width * 0.5409988, size.height * 0.9507246);
    path_1.lineTo(size.width * 0.5409988, size.height * 0.9318362);
    path_1.cubicTo(
        size.width * 0.7556638,
        size.height * 0.9785000,
        size.width * 0.9562573,
        size.height * 0.7544261,
        size.width * 0.9538629,
        size.height * 0.5136855);
    path_1.cubicTo(
        size.width * 0.9514672,
        size.height * 0.2729464,
        size.width * 0.8186383,
        size.height * 0.06903072,
        size.width * 0.6275231,
        size.height * 0.06220609);
    path_1.cubicTo(
        size.width * 0.6199272,
        size.height * 0.06193478,
        size.width * 0.6080631,
        size.height * 0.06220609,
        size.width * 0.6080631,
        size.height * 0.06220609);
    path_1.cubicTo(
        size.width * 0.6080631,
        size.height * 0.06220609,
        size.width * 0.5662367,
        size.height * 0.06296696,
        size.width * 0.5406990,
        size.height * 0.06924609);
    path_1.lineTo(size.width * 0.5406990, size.height * 0.05072464);
    path_1.lineTo(size.width * 0.5233350, size.height * 0.05072464);
    path_1.lineTo(size.width * 0.5233350, size.height * 0.06924609);
    path_1.lineTo(size.width * 0.4763301, size.height * 0.06924609);
    path_1.lineTo(size.width * 0.4763301, size.height * 0.05072464);
    path_1.lineTo(size.width * 0.4586663, size.height * 0.05072464);
    path_1.lineTo(size.width * 0.4586663, size.height * 0.06924609);
    path_1.cubicTo(
        size.width * 0.2586711,
        size.height * 0.03813203,
        size.width * 0.1025411,
        size.height * 0.1715406,
        size.width * 0.05747828,
        size.height * 0.3970232);
    path_1.cubicTo(
        size.width * 0.01460886,
        size.height * 0.6115290,
        size.width * 0.09542391,
        size.height * 0.8181609,
        size.width * 0.2598677,
        size.height * 0.9044290);
    path_1.cubicTo(
        size.width * 0.3319988,
        size.height * 0.9422681,
        size.width * 0.3815546,
        size.height * 0.9449507,
        size.width * 0.4592646,
        size.height * 0.9318362);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6206820, size.height * 0.1300214);
    path_2.lineTo(size.width * 0.5903362, size.height * 0.2770986);
    path_2.cubicTo(
        size.width * 0.6044660,
        size.height * 0.2749754,
        size.width * 0.6126772,
        size.height * 0.2746696,
        size.width * 0.6274515,
        size.height * 0.2751406);
    path_2.lineTo(size.width * 0.6633993, size.height * 0.1398080);
    path_2.cubicTo(
        size.width * 0.6473192,
        size.height * 0.1344909,
        size.width * 0.6378689,
        size.height * 0.1325884,
        size.width * 0.6206820,
        size.height * 0.1300214);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff7C7BB2).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5651262, size.height * 0.1297403);
    path_3.lineTo(size.width * 0.5515874, size.height * 0.2927551);
    path_3.cubicTo(
        size.width * 0.5642500,
        size.height * 0.2855333,
        size.width * 0.5717682,
        size.height * 0.2824058,
        size.width * 0.5859005,
        size.height * 0.2784942);
    path_3.lineTo(size.width * 0.6174138, size.height * 0.1297403);
    path_3.cubicTo(
        size.width * 0.5967282,
        size.height * 0.1282886,
        size.width * 0.5853155,
        size.height * 0.1284728,
        size.width * 0.5651262,
        size.height * 0.1297403);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff7C7BB2).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.6664333, size.height * 0.1406448);
    path_4.lineTo(size.width * 0.6314199, size.height * 0.2754188);
    path_4.cubicTo(
        size.width * 0.6454575,
        size.height * 0.2764841,
        size.width * 0.6531165,
        size.height * 0.2779667,
        size.width * 0.6662002,
        size.height * 0.2821290);
    path_4.lineTo(size.width * 0.7107840, size.height * 0.1571420);
    path_4.cubicTo(
        size.width * 0.6947512,
        size.height * 0.1495348,
        size.width * 0.6848459,
        size.height * 0.1460710,
        size.width * 0.6664333,
        size.height * 0.1406448);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xff7C7BB2).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.4379078, size.height * 0.1294610);
    path_5.lineTo(size.width * 0.4428107, size.height * 0.1859435);
    path_5.cubicTo(
        size.width * 0.4580352,
        size.height * 0.1860377,
        size.width * 0.4673871,
        size.height * 0.1891739,
        size.width * 0.4794587,
        size.height * 0.1920942);
    path_5.lineTo(size.width * 0.4817925, size.height * 0.1392475);
    path_5.cubicTo(
        size.width * 0.4646566,
        size.height * 0.1340014,
        size.width * 0.4550425,
        size.height * 0.1319225,
        size.width * 0.4379078,
        size.height * 0.1294610);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xff696967).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.4794587, size.height * 0.1965681);
    path_6.lineTo(size.width * 0.4743228, size.height * 0.3095319);
    path_6.cubicTo(
        size.width * 0.4661590,
        size.height * 0.3022406,
        size.width * 0.4613240,
        size.height * 0.2986391,
        size.width * 0.4519138,
        size.height * 0.2935942);
    path_6.lineTo(size.width * 0.4432779, size.height * 0.1898580);
    path_6.lineTo(size.width * 0.4794587, size.height * 0.1965681);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xffA57EAF).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.2450983, size.height * 0.1834246);
    path_7.lineTo(size.width * 0.2971529, size.height * 0.2994652);
    path_7.cubicTo(
        size.width * 0.3083993,
        size.height * 0.2920362,
        size.width * 0.3153204,
        size.height * 0.2883145,
        size.width * 0.3290133,
        size.height * 0.2827507);
    path_7.lineTo(size.width * 0.2847803, size.height * 0.1596580);
    path_7.cubicTo(
        size.width * 0.2683410,
        size.height * 0.1675957,
        size.width * 0.2596990,
        size.height * 0.1728652,
        size.width * 0.2450983,
        size.height * 0.1834246);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.3790850, size.height * 0.1300214);
    path_8.lineTo(size.width * 0.4091978, size.height * 0.2776580);
    path_8.cubicTo(
        size.width * 0.3940364,
        size.height * 0.2751188,
        size.width * 0.3856141,
        size.height * 0.2747159,
        size.width * 0.3706820,
        size.height * 0.2751406);
    path_8.lineTo(size.width * 0.3354345, size.height * 0.1398080);
    path_8.cubicTo(
        size.width * 0.3518398,
        size.height * 0.1348838,
        size.width * 0.3614417,
        size.height * 0.1328187,
        size.width * 0.3790850,
        size.height * 0.1300214);
    path_8.close();

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Color(0xffA57EAF).withOpacity(1.0);
    canvas.drawPath(path_8, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.2945850, size.height * 0.3014232);
    path_9.cubicTo(
        size.width * 0.2839709,
        size.height * 0.3076232,
        size.width * 0.2787597,
        size.height * 0.3117565,
        size.width * 0.2703083,
        size.height * 0.3198768);
    path_9.lineTo(size.width * 0.2091505, size.height * 0.2147420);
    path_9.cubicTo(
        size.width * 0.2210243,
        size.height * 0.2029188,
        size.width * 0.2282221,
        size.height * 0.1965261,
        size.width * 0.2422973,
        size.height * 0.1856623);
    path_9.lineTo(size.width * 0.2945850, size.height * 0.3014232);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_9, paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4338908, size.height * 0.1288078);
    path_10.lineTo(size.width * 0.4477124, size.height * 0.2913565);
    path_10.cubicTo(
        size.width * 0.4356505,
        size.height * 0.2851493,
        size.width * 0.4283617,
        size.height * 0.2821101,
        size.width * 0.4135097,
        size.height * 0.2781623);
    path_10.lineTo(size.width * 0.3828204, size.height * 0.1293693);
    path_10.cubicTo(
        size.width * 0.4023617,
        size.height * 0.1279012,
        size.width * 0.4134903,
        size.height * 0.1276084,
        size.width * 0.4338908,
        size.height * 0.1288078);
    path_10.close();

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color = Color(0xffA57EAF).withOpacity(1.0);
    canvas.drawPath(path_10, paint_10_fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.7020558, size.height * 0.6967957);
    path_11.lineTo(size.width * 0.7530340, size.height * 0.8128348);
    path_11.cubicTo(
        size.width * 0.7385413,
        size.height * 0.8234043,
        size.width * 0.7298519,
        size.height * 0.8287797,
        size.width * 0.7136954,
        size.height * 0.8377203);
    path_11.lineTo(size.width * 0.6694672, size.height * 0.7141319);
    path_11.cubicTo(
        size.width * 0.6829891,
        size.height * 0.7096638,
        size.width * 0.6900595,
        size.height * 0.7056754,
        size.width * 0.7020558,
        size.height * 0.6967957);
    path_11.close();

    Paint paint_11_fill = Paint()..style = PaintingStyle.fill;
    paint_11_fill.color = Color(0xff374390).withOpacity(1.0);
    canvas.drawPath(path_11, paint_11_fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.6664333, size.height * 0.7152507);
    path_12.lineTo(size.width * 0.7098495, size.height * 0.8396797);
    path_12.cubicTo(
        size.width * 0.6944138,
        size.height * 0.8483928,
        size.width * 0.6847245,
        size.height * 0.8518884,
        size.width * 0.6661990,
        size.height * 0.8564565);
    path_12.lineTo(size.width * 0.6311857, size.height * 0.7214029);
    path_12.cubicTo(
        size.width * 0.6456262,
        size.height * 0.7206986,
        size.width * 0.6534053,
        size.height * 0.7195043,
        size.width * 0.6664333,
        size.height * 0.7152507);
    path_12.close();

    Paint paint_12_fill = Paint()..style = PaintingStyle.fill;
    paint_12_fill.color = Color(0xff7C7BB2).withOpacity(1.0);
    canvas.drawPath(path_12, paint_12_fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.6279175, size.height * 0.7216826);
    path_13.lineTo(size.width * 0.6629320, size.height * 0.8575754);
    path_13.cubicTo(
        size.width * 0.6469320,
        size.height * 0.8620913,
        size.width * 0.6376226,
        size.height * 0.8638348,
        size.width * 0.6204478,
        size.height * 0.8656841);
    path_13.lineTo(size.width * 0.5887015, size.height * 0.7191667);
    path_13.cubicTo(
        size.width * 0.6044927,
        size.height * 0.7230928,
        size.width * 0.6129782,
        size.height * 0.7232478,
        size.width * 0.6279175,
        size.height * 0.7216826);
    path_13.close();

    Paint paint_13_fill = Paint()..style = PaintingStyle.fill;
    paint_13_fill.color = Color(0xff7C7BB2).withOpacity(1.0);
    canvas.drawPath(path_13, paint_13_fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.5859005, size.height * 0.7186130);
    path_14.lineTo(size.width * 0.6167136, size.height * 0.8665797);
    path_14.cubicTo(
        size.width * 0.5975898,
        size.height * 0.8691290,
        size.width * 0.5862306,
        size.height * 0.8695362,
        size.width * 0.5648920,
        size.height * 0.8685377);
    path_14.lineTo(size.width * 0.5508871, size.height * 0.7046275);
    path_14.cubicTo(
        size.width * 0.5646481,
        size.height * 0.7122957,
        size.width * 0.5723034,
        size.height * 0.7150681,
        size.width * 0.5859005,
        size.height * 0.7186130);
    path_14.close();

    Paint paint_14_fill = Paint()..style = PaintingStyle.fill;
    paint_14_fill.color = Color(0xff7C7BB2).withOpacity(1.0);
    canvas.drawPath(path_14, paint_14_fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.2948180, size.height * 0.6965188);
    path_15.lineTo(size.width * 0.2420631, size.height * 0.8111609);
    path_15.cubicTo(
        size.width * 0.2279502,
        size.height * 0.8015130,
        size.width * 0.2205716,
        size.height * 0.7954058,
        size.width * 0.2082160,
        size.height * 0.7834783);
    path_15.lineTo(size.width * 0.2703083, size.height * 0.6775058);
    path_15.cubicTo(
        size.width * 0.2794187,
        size.height * 0.6862014,
        size.width * 0.2847816,
        size.height * 0.6903739,
        size.width * 0.2948180,
        size.height * 0.6965188);
    path_15.close();

    Paint paint_15_fill = Paint()..style = PaintingStyle.fill;
    paint_15_fill.color = Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_15, paint_15_fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.3305328, size.height * 0.7147609);
    path_16.lineTo(size.width * 0.2856044, size.height * 0.8388420);
    path_16.cubicTo(
        size.width * 0.2682112,
        size.height * 0.8298899,
        size.width * 0.2596663,
        size.height * 0.8242348,
        size.width * 0.2455655,
        size.height * 0.8135768);
    path_16.lineTo(size.width * 0.2981748, size.height * 0.6979159);
    path_16.cubicTo(
        size.width * 0.3099102,
        size.height * 0.7056116,
        size.width * 0.3167597,
        size.height * 0.7095942,
        size.width * 0.3305328,
        size.height * 0.7147609);
    path_16.close();

    Paint paint_16_fill = Paint()..style = PaintingStyle.fill;
    paint_16_fill.color = Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_16, paint_16_fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.3678799, size.height * 0.7222420);
    path_17.lineTo(size.width * 0.3319320, size.height * 0.8578536);
    path_17.cubicTo(
        size.width * 0.3153022,
        size.height * 0.8531391,
        size.width * 0.3049211,
        size.height * 0.8480043,
        size.width * 0.2885146,
        size.height * 0.8402391);
    path_17.lineTo(size.width * 0.3333325, size.height * 0.7152507);
    path_17.cubicTo(
        size.width * 0.3476068,
        size.height * 0.7196014,
        size.width * 0.3552367,
        size.height * 0.7212754,
        size.width * 0.3678799,
        size.height * 0.7222420);
    path_17.close();

    Paint paint_17_fill = Paint()..style = PaintingStyle.fill;
    paint_17_fill.color = Color(0xffA57EAF).withOpacity(1.0);
    canvas.drawPath(path_17, paint_17_fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.2740437, size.height * 0.3558362);
    path_18.cubicTo(
        size.width * 0.3361347,
        size.height * 0.2822942,
        size.width * 0.4077269,
        size.height * 0.2734899,
        size.width * 0.4866505,
        size.height * 0.3368188);
    path_18.lineTo(size.width * 0.5191408, size.height * 0.3368188);
    path_18.cubicTo(
        size.width * 0.6225498,
        size.height * 0.2428681,
        size.width * 0.7537354,
        size.height * 0.3150087,
        size.width * 0.7782451,
        size.height * 0.4648826);
    path_18.lineTo(size.width * 0.7789454, size.height * 0.4715928);
    path_18.cubicTo(
        size.width * 0.7920170,
        size.height * 0.6690000,
        size.width * 0.6339867,
        size.height * 0.7646275,
        size.width * 0.5214757,
        size.height * 0.6650855);
    path_18.lineTo(size.width * 0.4864612, size.height * 0.6650855);
    path_18.cubicTo(
        size.width * 0.4152658,
        size.height * 0.7232449,
        size.width * 0.3323993,
        size.height * 0.7229652,
        size.width * 0.2745097,
        size.height * 0.6415986);
    path_18.lineTo(size.width * 0.2740437, size.height * 0.3558362);
    path_18.close();

    Paint paint_18_fill = Paint()..style = PaintingStyle.fill;
    paint_18_fill.color = Color(0xff89B237).withOpacity(1.0);
    canvas.drawPath(path_18, paint_18_fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.7992488, size.height * 0.5258261);
    path_19.cubicTo(
        size.width * 0.7882209,
        size.height * 0.5984609,
        size.width * 0.7728604,
        size.height * 0.6306406,
        size.width * 0.7320255,
        size.height * 0.6754942);
    path_19.lineTo(size.width * 0.7947985, size.height * 0.7812406);
    path_19.cubicTo(
        size.width * 0.8610837,
        size.height * 0.6975942,
        size.width * 0.9009017,
        size.height * 0.6402449,
        size.width * 0.9048847,
        size.height * 0.5213507);
    path_19.cubicTo(
        size.width * 0.9088665,
        size.height * 0.4024551,
        size.width * 0.8786505,
        size.height * 0.3171319,
        size.width * 0.7976092,
        size.height * 0.2208971);
    path_19.lineTo(size.width * 0.7950328, size.height * 0.2180986);
    path_19.lineTo(size.width * 0.7324939, size.height * 0.3246841);
    path_19.cubicTo(
        size.width * 0.7746080,
        size.height * 0.3719043,
        size.width * 0.7885801,
        size.height * 0.4043696,
        size.width * 0.7987803,
        size.height * 0.4712754);
    path_19.lineTo(size.width * 0.7992488, size.height * 0.4746319);
    path_19.lineTo(size.width * 0.8465619, size.height * 0.4802275);
    path_19.lineTo(size.width * 0.8465619, size.height * 0.5213507);
    path_19.cubicTo(
        size.width * 0.8465619,
        size.height * 0.5213507,
        size.width * 0.8193568,
        size.height * 0.5257319,
        size.width * 0.8018252,
        size.height * 0.5258261);
    path_19.cubicTo(
        size.width * 0.8008192,
        size.height * 0.5258319,
        size.width * 0.7992488,
        size.height * 0.5258261,
        size.width * 0.7992488,
        size.height * 0.5258261);
    path_19.close();

    Paint paint_19_fill = Paint()..style = PaintingStyle.fill;
    paint_19_fill.color = Color(0xffCD4C4C).withOpacity(1.0);
    canvas.drawPath(path_19, paint_19_fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.7546687, size.height * 0.1842667);
    path_20.lineTo(size.width * 0.7016808, size.height * 0.2991884);
    path_20.cubicTo(
        size.width * 0.6898180,
        size.height * 0.2913029,
        size.width * 0.6828532,
        size.height * 0.2877362,
        size.width * 0.6697015,
        size.height * 0.2835304);
    path_20.lineTo(size.width * 0.7138192, size.height * 0.1585435);
    path_20.cubicTo(
        size.width * 0.7309563,
        size.height * 0.1659913,
        size.width * 0.7400461,
        size.height * 0.1712841,
        size.width * 0.7546687,
        size.height * 0.1842667);
    path_20.close();

    Paint paint_20_fill = Paint()..style = PaintingStyle.fill;
    paint_20_fill.color = Color(0xff374390).withOpacity(1.0);
    canvas.drawPath(path_20, paint_20_fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.4854988, size.height * 0.1414826);
    path_21.lineTo(size.width * 0.4808592, size.height * 0.2667493);
    path_21.lineTo(size.width * 0.5191408, size.height * 0.2667493);
    path_21.lineTo(size.width * 0.5145000, size.height * 0.1414826);
    path_21.lineTo(size.width * 0.4854988, size.height * 0.1414826);
    path_21.close();

    Paint paint_21_fill = Paint()..style = PaintingStyle.fill;
    paint_21_fill.color = Color(0xff696967).withOpacity(1.0);
    canvas.drawPath(path_21, paint_21_fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.5144442, size.height * 0.8572971);
    path_22.lineTo(size.width * 0.5191408, size.height * 0.7314710);
    path_22.lineTo(size.width * 0.4803920, size.height * 0.7314710);
    path_22.lineTo(size.width * 0.4850898, size.height * 0.8572971);
    path_22.lineTo(size.width * 0.5144442, size.height * 0.8572971);
    path_22.close();

    Paint paint_22_fill = Paint()..style = PaintingStyle.fill;
    paint_22_fill.color = Color(0xff696967).withOpacity(1.0);
    canvas.drawPath(path_22, paint_22_fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.4526141, size.height * 0.7032275);
    path_23.lineTo(size.width * 0.4381420, size.height * 0.8682000);
    path_23.cubicTo(
        size.width * 0.4561092,
        size.height * 0.8669159,
        size.width * 0.4657209,
        size.height * 0.8652449,
        size.width * 0.4817925,
        size.height * 0.8600913);
    path_23.lineTo(size.width * 0.4738556, size.height * 0.6884087);
    path_23.cubicTo(
        size.width * 0.4668204,
        size.height * 0.6943087,
        size.width * 0.4622706,
        size.height * 0.6975768,
        size.width * 0.4526141,
        size.height * 0.7032275);
    path_23.close();

    Paint paint_23_fill = Paint()..style = PaintingStyle.fill;
    paint_23_fill.color = Color(0xffA57EAF).withOpacity(1.0);
    canvas.drawPath(path_23, paint_23_fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.5189078, size.height * 0.8136754);
    path_24.lineTo(size.width * 0.5177403, size.height * 0.8600899);
    path_24.cubicTo(
        size.width * 0.5356141,
        size.height * 0.8652739,
        size.width * 0.5453568,
        size.height * 0.8670043,
        size.width * 0.5623252,
        size.height * 0.8684783);
    path_24.lineTo(size.width * 0.5578896, size.height * 0.8215043);
    path_24.cubicTo(
        size.width * 0.5424612,
        size.height * 0.8207710,
        size.width * 0.5339466,
        size.height * 0.8187435,
        size.width * 0.5189078,
        size.height * 0.8136754);
    path_24.close();

    Paint paint_24_fill = Paint()..style = PaintingStyle.fill;
    paint_24_fill.color = Color(0xff696967).withOpacity(1.0);
    canvas.drawPath(path_24, paint_24_fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.4138653, size.height * 0.7191652);
    path_25.lineTo(size.width * 0.3814199, size.height * 0.8676391);
    path_25.cubicTo(
        size.width * 0.4025850,
        size.height * 0.8697507,
        size.width * 0.4142840,
        size.height * 0.8701841,
        size.width * 0.4346408,
        size.height * 0.8684783);
    path_25.lineTo(size.width * 0.4484126, size.height * 0.7057435);
    path_25.cubicTo(
        size.width * 0.4375680,
        size.height * 0.7121159,
        size.width * 0.4296311,
        size.height * 0.7148957,
        size.width * 0.4138653,
        size.height * 0.7191652);
    path_25.close();

    Paint paint_25_fill = Paint()..style = PaintingStyle.fill;
    paint_25_fill.color = Color(0xffA57EAF).withOpacity(1.0);
    canvas.drawPath(path_25, paint_25_fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.4105971, size.height * 0.7202841);
    path_26.lineTo(size.width * 0.3795510, size.height * 0.8676406);
    path_26.cubicTo(
        size.width * 0.3616068,
        size.height * 0.8657145,
        size.width * 0.3519296,
        size.height * 0.8636609,
        size.width * 0.3352002,
        size.height * 0.8586928);
    path_26.lineTo(size.width * 0.3709150, size.height * 0.7228000);
    path_26.cubicTo(
        size.width * 0.3896129,
        size.height * 0.7233812,
        size.width * 0.3994964,
        size.height * 0.7234087,
        size.width * 0.4105971,
        size.height * 0.7202841);
    path_26.close();

    Paint paint_26_fill = Paint()..style = PaintingStyle.fill;
    paint_26_fill.color = Color(0xffA57EAF).withOpacity(1.0);
    canvas.drawPath(path_26, paint_26_fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.5250121, size.height * 0.6856116);
    path_27.lineTo(size.width * 0.5191408, size.height * 0.8107783);
    path_27.cubicTo(
        size.width * 0.5351760,
        size.height * 0.8115246,
        size.width * 0.5435825,
        size.height * 0.8134667,
        size.width * 0.5578896,
        size.height * 0.8187087);
    path_27.lineTo(size.width * 0.5480267, size.height * 0.7031696);
    path_27.cubicTo(
        size.width * 0.5382330,
        size.height * 0.6974261,
        size.width * 0.5332439,
        size.height * 0.6937058,
        size.width * 0.5250121,
        size.height * 0.6856116);
    path_27.close();

    Paint paint_27_fill = Paint()..style = PaintingStyle.fill;
    paint_27_fill.color = Color(0xff7C7BB2).withOpacity(1.0);
    canvas.drawPath(path_27, paint_27_fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.7564891, size.height * 0.8108768);
    path_28.lineTo(size.width * 0.7049478, size.height * 0.6954855);
    path_28.cubicTo(
        size.width * 0.7151772,
        size.height * 0.6890449,
        size.width * 0.7204490,
        size.height * 0.6849797,
        size.width * 0.7293252,
        size.height * 0.6772217);
    path_28.lineTo(size.width * 0.7908495, size.height * 0.7823754);
    path_28.cubicTo(
        size.width * 0.7798641,
        size.height * 0.7962536,
        size.width * 0.7722597,
        size.height * 0.8024014,
        size.width * 0.7564891,
        size.height * 0.8108768);
    path_28.close();

    Paint paint_28_fill = Paint()..style = PaintingStyle.fill;
    paint_28_fill.color = Color(0xff374390).withOpacity(1.0);
    canvas.drawPath(path_28, paint_28_fill);

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.1797852, size.height * 0.6708464);
    path_29.lineTo(size.width * 0.2652658, size.height * 0.6708464);
    path_29.lineTo(size.width * 0.2703083, size.height * 0.6742000);
    path_29.lineTo(size.width * 0.2057172, size.height * 0.7806797);
    path_29.cubicTo(
        size.width * 0.2057172,
        size.height * 0.7806797,
        size.width * 0.2036602,
        size.height * 0.7788174,
        size.width * 0.2023556,
        size.height * 0.7776058);
    path_29.cubicTo(
        size.width * 0.1147535,
        size.height * 0.6962826,
        size.width * 0.09430400,
        size.height * 0.5948290,
        size.width * 0.09430400,
        size.height * 0.4682275);
    path_29.cubicTo(
        size.width * 0.09430400,
        size.height * 0.3416246,
        size.width * 0.2054769,
        size.height * 0.2186565,
        size.width * 0.2054769,
        size.height * 0.2186565);
    path_29.lineTo(size.width * 0.2061978, size.height * 0.2175391);
    path_29.lineTo(size.width * 0.2688665, size.height * 0.3217826);
    path_29.lineTo(size.width * 0.2643046, size.height * 0.3282101);
    path_29.lineTo(size.width * 0.1797852, size.height * 0.3282101);
    path_29.lineTo(size.width * 0.1797852, size.height * 0.4754942);
    path_29.lineTo(size.width * 0.1526517, size.height * 0.4796855);
    path_29.lineTo(size.width * 0.1526517, size.height * 0.5204884);
    path_29.lineTo(size.width * 0.1797852, size.height * 0.5221652);
    path_29.lineTo(size.width * 0.1797852, size.height * 0.6708464);
    path_29.close();

    Paint paint_29_fill = Paint()..style = PaintingStyle.fill;
    paint_29_fill.color = Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_29, paint_29_fill);

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.2631650, size.height * 0.6677174);
    path_30.lineTo(size.width * 0.1828665, size.height * 0.6677174);
    path_30.lineTo(size.width * 0.1837998, size.height * 0.3307826);
    path_30.lineTo(size.width * 0.2631650, size.height * 0.3307826);
    path_30.lineTo(size.width * 0.2631650, size.height * 0.6677174);
    path_30.close();

    Paint paint_30_fill = Paint()..style = PaintingStyle.fill;
    paint_30_fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_30, paint_30_fill);

    Path path_31 = Path();
    path_31.moveTo(size.width * 0.3321663, size.height * 0.1406448);
    path_31.lineTo(size.width * 0.3678799, size.height * 0.2754188);
    path_31.cubicTo(
        size.width * 0.3538301,
        size.height * 0.2765449,
        size.width * 0.3461614,
        size.height * 0.2778826,
        size.width * 0.3328665,
        size.height * 0.2815696);
    path_31.lineTo(size.width * 0.2892148, size.height * 0.1577014);
    path_31.cubicTo(
        size.width * 0.3044806,
        size.height * 0.1499217,
        size.width * 0.3136905,
        size.height * 0.1460435,
        size.width * 0.3321663,
        size.height * 0.1406448);
    path_31.close();

    Paint paint_31_fill = Paint()..style = PaintingStyle.fill;
    paint_31_fill.color = Color(0xffA57EAF).withOpacity(1.0);
    canvas.drawPath(path_31, paint_31_fill);

    Path path_32 = Path();
    path_32.moveTo(size.width * 0.5172731, size.height * 0.1392465);
    path_32.lineTo(size.width * 0.5249769, size.height * 0.3092522);
    path_32.cubicTo(
        size.width * 0.5331602,
        size.height * 0.3023841,
        size.width * 0.5378629,
        size.height * 0.2990667,
        size.width * 0.5466857,
        size.height * 0.2952710);
    path_32.lineTo(size.width * 0.5611578, size.height * 0.1302988);
    path_32.cubicTo(
        size.width * 0.5436153,
        size.height * 0.1317701,
        size.width * 0.5339575,
        size.height * 0.1335390,
        size.width * 0.5172731,
        size.height * 0.1392465);
    path_32.close();

    Paint paint_32_fill = Paint()..style = PaintingStyle.fill;
    paint_32_fill.color = Color(0xff7C7BB2).withOpacity(1.0);
    canvas.drawPath(path_32, paint_32_fill);

    Path path_33 = Path();
    path_33.moveTo(size.width * 0.7900485, size.height * 0.2158783);
    path_33.lineTo(size.width * 0.7289757, size.height * 0.3217391);
    path_33.cubicTo(
        size.width * 0.7203981,
        size.height * 0.3132768,
        size.width * 0.7150073,
        size.height * 0.3087551,
        size.width * 0.7050971,
        size.height * 0.3023638);
    path_33.lineTo(size.width * 0.7581347, size.height * 0.1869565);
    path_33.cubicTo(
        size.width * 0.7717913,
        size.height * 0.1967072,
        size.width * 0.7789150,
        size.height * 0.2028638,
        size.width * 0.7900485,
        size.height * 0.2158783);
    path_33.close();

    Paint paint_33_fill = Paint()..style = PaintingStyle.fill;
    paint_33_fill.color = Color(0xff374390).withOpacity(1.0);
    canvas.drawPath(path_33, paint_33_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
