import 'package:flutter/material.dart';

import 'components/custom_text_field.dart';
import 'components/header_component.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.width,
    this.end,
    this.buttom,
  });

  final double width;
  final double? end;
  final double? buttom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
          start: 20, top: 20, bottom: buttom ?? 0, end: end ?? 0),
      padding: const EdgeInsets.all(20),
      width: width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: HeaderComponent(
                  width: width,
                  color: const Color(0xFFCABDFF),
                  title: "Products",
                ),
              ),
              // const Spacer(),
              const SizedBox(width: 20),
              const Expanded(flex: 2, child: CustomTextField(isActive: false)),
              // const Spacer(flex: 2),
            ],
          ),
          // const SizedBox(width: 20),
          ProductTable(),
        ],
      ),
    );
  }
}

class ProductTable extends StatelessWidget {
  ProductTable({
    super.key,
  });
  final List<String>? columnsItems = [
    'Product',
    'Status',
    'Price',
    'Sales',
    'Views',
    'Likes'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: const Color(0xFFF8F8F8),
          dividerTheme: const DividerThemeData(
            color: Color(0xFFF8F8F8),
            space: 0,
            thickness: 0,
            indent: 0,
            endIndent: 0,
          ),
        ),
        child: DataTable(
          columnSpacing: 20,
          // dataRowMinHeight: 100,
          // checkboxHorizontalMargin: 0,
          // showCheckboxColumn: true,
          // showBottomBorder: true,

          // dividerThickness: 0,
          dataRowMaxHeight: 90,

          // border: const TableBorder(
          //   horizontalInside: BorderSide(width: 0, color: Colors.transparent
          //       //Colors.grey.shade50
          //       //const Color(0xFFF8F8F8).withOpacity(0.9),
          //       //Color(0xFFF8F8F8),
          //       ),
          // ),
          columns: <DataColumn>[
            DataColumn(
              label: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            for (var i = 0; i < 6; i++)
              DataColumn(
                label: Text(
                  columnsItems![i],
                ),
              ),
          ],
          rows: <DataRow>[
            for (var i = 0; i < 9; i++)
              DataRow(
                cells: <DataCell>[
                  DataCell(Checkbox(
                    value: false,
                    onChanged: (value) {},
                  )),
                  const DataCell(ProductCell()),
                  DataCell(StatusCell(i: i)),
                  const DataCell(Padding(
                    padding: EdgeInsetsDirectional.only(end: 40),
                    child: Text(r'$98', style: TextStyle(fontSize: 13)),
                  )),
                  const DataCell(SalesCell()),
                  const DataCell(Padding(
                    padding: EdgeInsetsDirectional.only(end: 40),
                    child: Text('48k'),
                  )),
                  const DataCell(Text('8')),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class SalesCell extends StatelessWidget {
  const SalesCell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsetsDirectional.only(end: 30),
        child: Row(
          children: [
            CustomContainer(
              textColor: Colors.black,
              contColor: Color(0xFFE0DCE4),
              title: r'$3,200',
            ),
            SizedBox(width: 10),
            Icon(Icons.arrow_upward, size: 18, color: Color(0xFF8AC276)),
            SizedBox(width: 10),
            Text("55.8%", style: TextStyle(fontSize: 13)),
          ],
        ));
  }
}

class StatusCell extends StatelessWidget {
  const StatusCell({
    super.key,
    required this.i,
  });
  final int i;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 30),
      child: CustomContainer(
        textColor:
            i % 2 == 0 ? const Color(0xFF8AC276) : const Color(0xFFFF6A55),
        contColor:
            i % 2 == 0 ? const Color(0xFFD9E6D3) : const Color(0xFFFECCCC),
        title: i % 2 == 0 ? 'Active' : 'Inactive',
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.title,
    required this.contColor,
    required this.textColor,
  });
  final String title;
  final Color contColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        color: contColor,
        borderRadius: const BorderRadius.all(Radius.circular(7)),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 13,
              // fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCell extends StatelessWidget {
  const ProductCell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 50),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFFE9DFF3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/img3.png", fit: BoxFit.fill),
          ),
          const SizedBox(width: 20),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bento Matte 3D IIIustration',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              Text(
                'Ui design',
                style: TextStyle(
                  color: Color(0xFF9A9FA5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
