import 'package:flutter/material.dart';
import '../widget/demension.dart';

class FloatingAcessBar extends StatefulWidget {
  final Size screenSize;
  const FloatingAcessBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  State<FloatingAcessBar> createState() => _FloatingAcessBarState();
}

class _FloatingAcessBarState extends State<FloatingAcessBar> {
  final List _isHovering = [false, false, false, false];
  List<Widget> rowElement = [];

  List<String> items = [
    'Web Developement',
    'Mobile Application',
    'Project Management',
    'Business solution'
  ];
  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.web,
  ];

  List<Widget> generateRowElement() {
    rowElement.clear();
    for (int i = 0; i < items.length; i++) {
      Widget elementTile = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            value ? _isHovering[i] = true : _isHovering[i] = false;
          });
        },
        onTap: () {},
        child: Text(
          items[i],
          style: TextStyle(
            color: _isHovering[i] ? Colors.green : Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
      Widget space = SizedBox(
        height: widget.screenSize.height / 20,
        child: const VerticalDivider(
          color: Colors.amber,
          width: 1,
          thickness: 1,
        ),
      );
      rowElement.add(elementTile);
      if (i < items.length - 1) {
        rowElement.add(space);
      }
    }
    return rowElement;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.60,
          left: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
          right: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
        ),
        child: widget.screenSize.width < 816
            ? Column(
                children: [
                  for (int i = 0; i < items.length; i++)
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: widget.screenSize.height / 30),
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: widget.screenSize.height / 45,
                            bottom: widget.screenSize.height / 45,
                            left: widget.screenSize.width / 40,
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[i] = true
                                        : _isHovering[i] = false;
                                  });
                                },
                                onTap: () {},
                                child: Text(
                                  items[i],
                                  style: TextStyle(
                                    color: _isHovering[i]
                                        ? Colors.green
                                        : Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              )
            : Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: widget.screenSize.height / 50,
                    bottom: widget.screenSize.height / 50,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: generateRowElement()),
                ),
              ),
      ),
    );
  }
}
