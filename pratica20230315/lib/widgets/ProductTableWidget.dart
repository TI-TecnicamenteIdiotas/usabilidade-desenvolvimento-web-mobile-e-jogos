import "package:flutter/material.dart";

import "../dtos/product.dart";

enum TableCellPosition { left, right }

class ProductTableWidget extends StatelessWidget {
  final double tablePadding = 16.0;
  final double tableRowElementPadding = 8.0;
  final double tableCellPadding = 8.0;
  final double tableCellMargin = 8.0;
  final double tableBorderRadius = 8.0;
  final double tableBorderWidth = 2.0;
  final List<Product> products;

  const ProductTableWidget(this.products);

  Widget buildTableCell(
    BuildContext context,
    String? value,
    TableCellPosition tableCellPosition,
  ) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tableCellPadding),
        margin: EdgeInsets.symmetric(vertical: tableCellMargin),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: tableCellPosition.name == "left"
                ? Radius.circular(tableBorderRadius)
                : Radius.zero,
            bottomLeft: tableCellPosition.name == "left"
                ? Radius.circular(tableBorderRadius)
                : Radius.zero,
            topRight: tableCellPosition.name == "right"
                ? Radius.circular(tableBorderRadius)
                : Radius.zero,
            bottomRight: tableCellPosition.name == "right"
                ? Radius.circular(tableBorderRadius)
                : Radius.zero,
          ),
        ),
        child: Text(value ?? "", textAlign: TextAlign.center),
      ),
    );
  }

  Widget buildTableRow(BuildContext context, Product product) {
    return Row(
      children: [
        buildTableCell(context, product.name, TableCellPosition.left),
        buildTableCell(
          context,
          "R\$ ${product.price?.toStringAsFixed(2).padLeft(5, '0')}",
          TableCellPosition.right,
        ),
      ],
    );
  }

  Widget buildTable(BuildContext context) {
    return Column(
      children:
          products.map((product) => buildTableRow(context, product)).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(tablePadding),
        child: buildTable(context),
      ),
    );
  }
}
