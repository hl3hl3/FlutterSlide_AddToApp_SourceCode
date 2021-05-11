import 'package:flutter/material.dart';

typedef CurrentDisplayPage = int Function();
typedef OnClickNextPage = Function();
typedef OnClickPreviousPage = Function();
typedef OnClickFirstPage = Function();
typedef OnClickLastPage = Function();

class PageIndicator extends StatefulWidget {
  final int totalPage;
  final CurrentDisplayPage currentPage;
  final OnClickNextPage onClickNextPage;
  final OnClickPreviousPage onClickPreviousPage;
  final OnClickFirstPage onClickFirstPage;
  final OnClickLastPage onClickLastPage;

  PageIndicator({
    Key key,
    this.totalPage,
    this.currentPage,
    this.onClickNextPage,
    this.onClickPreviousPage,
    this.onClickFirstPage,
    this.onClickLastPage,
  }) : super(key: key);

  @override
  PageIndicatorState createState() => PageIndicatorState();
}

class PageIndicatorState extends State<PageIndicator> {

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    int currentPage = _currentPage;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.first_page_rounded),
          onPressed: _hasPrevious(currentPage)
              ? null
              : () {
                  widget.onClickFirstPage();
                  // setState(() {});
                },
        ),
        IconButton(
          icon: Icon(Icons.navigate_before_rounded),
          onPressed: _hasPrevious(currentPage)
              ? null
              : () {
                  widget.onClickPreviousPage();
                  // setState(() {});
                },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text("${currentPage + 1} / ${widget.totalPage}"),
        ),
        IconButton(
          icon: Icon(Icons.navigate_next_rounded),
          onPressed: _hasNext(currentPage)
              ? null
              : () {
                  widget.onClickNextPage();
                  // setState(() {});
                },
        ),
        IconButton(
          icon: Icon(Icons.last_page_rounded),
          onPressed: _hasNext(currentPage)
              ? null
              : () {
                  widget.onClickLastPage();
                  // setState(() {});
                },
        ),
      ],
    );
  }

  bool _hasPrevious(int page) => page == 0;

  bool _hasNext(int page) => page == widget.totalPage - 1;

  updateDisplayPage(int currentPage) {
    _currentPage = currentPage;
    setState(() {

    });
  }
}
