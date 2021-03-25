import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitility/adminside/helper/database.dart';
import 'package:fitility/adminside/screen/createpage.dart';
import 'package:fitility/adminside/screen/modifypage.dart';
import 'package:fitility/services/transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DeletePage extends StatefulWidget {
  @override
  _DeletePageState createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  String videoName = "Select";

  TextEditingController videoNameController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: Icon(
          Icons.menu,
          color: Color(0xffdc2126),
          size: 35.0,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 40.0),
            Image.asset(
              'images/logo.png',
              height: 35.0,
            ),
            SizedBox(width: 5.0),
            Text(
              "Fitility Admin",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          child: Container(
            color: Color(0xffdc2126),
            height: 2.5,
          ),
          preferredSize: Size.fromHeight(2.5),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        FadeRoute(page: CreatePage()),
                      );
                    },
                    child: CategoryTile(
                      categoryname: "Create",
                      isDelete: false,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, FadeRoute(page: ModifyPage()));
                    },
                    child: CategoryTile(
                      categoryname: "Modify",
                      isDelete: false,
                    ),
                  ),
                  CategoryTile(
                    categoryname: "Delete",
                    isDelete: true,
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              MainTitleText(text: "Delete a Video"),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                height: 2.0,
                color: Color(0xffdc2126),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Video Name",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    StreamBuilder(
                        stream: Firestore.instance
                            .collection('videos')
                            .orderBy('videoname', descending: false)
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData)
                            return Center(
                              child: CupertinoActivityIndicator(),
                            );

                          return Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: videoName,
                                onChanged: (value) {
                                  setState(() {
                                    videoName = value;
                                    videoNameController.text = videoName;
                                    snapshot.data.documents.map((document) {
                                      if (document['videoname'] == videoName)
                                        descriptionController.text =
                                            document['description'];
                                    }).toList();
                                  });
                                },
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                                dropdownColor: Colors.grey[100],
                                isExpanded: true,
                                isDense: true,
                                hint: Text(
                                  videoName,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                items: snapshot.data != null
                                    ? snapshot.data.documents
                                        .map<DropdownMenuItem<String>>(
                                          (value) =>
                                              new DropdownMenuItem<String>(
                                            value: value['videoname'],
                                            child: new Container(
                                              child:
                                                  new Text(value['videoname']),
                                            ),
                                          ),
                                        )
                                        .toList()
                                    : DropdownMenuItem(
                                        value: 'null',
                                        child: new Container(
                                          child: new Text('null'),
                                        ),
                                      ),
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              AbsorbPointer(
                absorbing: videoName == "Select" ? true : false,
                child: Opacity(
                  opacity: videoName == "Select" ? 0.3 : 1.0,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.red[800],
                                    size: 10.0,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 45.0),
                                child: Theme(
                                  data: ThemeData(
                                    primaryColor: Colors.black,
                                  ),
                                  child: TextField(
                                    controller: videoNameController,
                                    enabled: false,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      hintText: "Video name",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Description",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.red[800],
                                    size: 10.0,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Theme(
                                  data: ThemeData(
                                    primaryColor: Colors.black,
                                  ),
                                  child: TextField(
                                    controller: descriptionController,
                                    enabled: false,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      hintText: "Description of video",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.0),
                      Container(
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              deleteVideo(videoName);
                              print("deleted video");
                              setState(() {
                                videoName = "Select";
                                videoNameController.clear();
                                descriptionController.clear();
                              });
                              Fluttertoast.showToast(
                                  msg: "Deleted the Video",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Color(0xffdc2126),
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                color: Colors.red[800],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                "Delete",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String categoryname;
  final bool isDelete;
  CategoryTile({this.categoryname, this.isDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        color: isDelete ? Color(0xffdc2126) : Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 1.0,
            blurRadius: 2.0,
            offset: Offset(2.0, 5.0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          categoryname,
          style: TextStyle(
            color: isDelete ? Colors.white : Color(0xff181818),
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik' 'Regular',
          ),
        ),
      ),
    );
  }
}

class MainTitleText extends StatelessWidget {
  final String text;
  MainTitleText({this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20.0,
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'images/bullet.png',
            height: 6.0,
            width: 15.0,
          ),
        ),
        SizedBox(width: 5.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Rubik Medium' 'Regular',
            color: Color(0xff181818),
          ),
        ),
      ],
    );
  }
}
