import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
class Rate extends StatefulWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  State<Rate> createState() => _RateState();
}

List<_SalesData> data = [
  _SalesData('Jan', 35),
  _SalesData('Feb', 28),
  _SalesData('Mar', 34),
  _SalesData('Apr', 32),
  _SalesData('May', 40)
];
class _RateState extends State<Rate> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState(){
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(0),
        child: AppBar(backgroundColor: const Color(0xff7FDCD2),
          elevation: 0,
        ),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child:Column(
            children: [
              Row(children:[ SvgPicture.asset("assets/icons/img1.svg"),

                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  transform: Matrix4.translationValues(
                      -MediaQuery.of(context).size.height*0.08,
                      MediaQuery.of(context).size.height*0.05, 0),

                  child: const Text("Statistics",
                    style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                  ),
                ),]),

              SizedBox(height:MediaQuery.of(context).size.height*0.02,),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
                padding: EdgeInsets.all(15),
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  title: ChartTitle(text: 'Half yearly sales analysis'),
                  // Enable legend
                  legend: Legend(isVisible: true),
                  // Enable tooltip
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<_SalesData, String>>[
                    LineSeries<_SalesData, String>(
                        dataSource: data,
                        xValueMapper: (_SalesData sales, _) => sales.year,
                        yValueMapper: (_SalesData sales, _) => sales.sales,
                        name: 'Sales',
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: true))
                  ]),),
            ]
        )


      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
