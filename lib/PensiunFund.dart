import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PensiunFund extends StatelessWidget {
  const PensiunFund({Key? key}) : super(key: key);

  Widget _buildLine() {
    return Container(child: TextFormField());
  }

  Widget _buildLineAll() {
    return Container(
      margin: EdgeInsets.only(left: 30),
      padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildLine(),
          space(),
          _buildLine(),
          space(),
          _buildLine(),
          space(),
          _buildLine(),
          space(),
          _buildLine(),
          space(),
          _buildLine(),
          space(),
          _buildLine(),
          space(),
          _buildLine(),
        ],
      ),
    );
  }

  Widget spaceDivider() {
    return Container(height: 50);
  }

  Widget space() {
    return Container(height: 10);
  }

  Widget _buildProductCompareLeftTitle() {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.only(top: 30),
            width: 200,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Current Age"),
                    spaceDivider(),
                    Text("Expected Retirement Age"),
                    spaceDivider(),
                    Text("Pensiun Periode"),
                    spaceDivider(),
                    Text("Current Monthly Living Cost "),
                    spaceDivider(),
                    Text("Risk Profile"),
                    spaceDivider(),
                    Text("Inflation Assumption(p.a)"),
                    spaceDivider(),
                    Text("Expected Invesment Retrun(p.a)"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

 Widget _builCategoryFund() {
    return Container(
      margin: EdgeInsets.only(left: 30),
      padding: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Text("Current Age"),
                    spaceDivider(),
                    Text("(Years)"),
                    spaceDivider(),
                    Text("(Years)"),
                    spaceDivider(),
                    Text("(Years)"),
                    spaceDivider(),
                    Text("(IDR)"),
                    spaceDivider(),
                    Text("(%)"),
                    spaceDivider(),
                    Text("(%)"),
        ],
      ),
    );
  }

Widget _builButton() {
    return Container(
      margin: EdgeInsets.only(left: 30),
      padding: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Column(
          children: [
           Container(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffF18265),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                 spaceDivider(),
                   Container(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffF18265),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Reset",
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
          ],
        ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Flutter"),
      ),
      body: Center(
        child: Container(
          width: 800,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              )
            ],
          ),
          child: Row(
            children: [
              Container(
                child: _buildProductCompareLeftTitle(),
              ),
              Expanded(
                child: Container(child: _buildLineAll(),
                ),
              ),
                Expanded(
                child: Container(child: _builCategoryFund(),
                ),
              ),
                Expanded(
                child: Container(child:_builButton(),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
