part of petisland.post.post_edit.widget;

class DescPostInput extends StatefulWidget {
  final PostEditBloc bloc;

  DescPostInput(this.bloc);

  @override
  _DescPostInputState createState() => _DescPostInputState();
}

class _DescPostInputState extends State<DescPostInput> {
  final TextEditingController textController = TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        padding: EdgeInsets.only(left: 13, right: 5),
        child: Flex(
          crossAxisAlignment: CrossAxisAlignment.start,
          direction: Axis.vertical,
          children: <Widget>[
            Text(
              'Mô tả',
              style: TTextStyles.bold(
                fontSize: 18,
              ).copyWith(
                fontFamily: FontFamilies.thabit,
              ),
            ),
            UserInputWidget(
              textController,
              hintText: "Nhập mô tả...",
              keyboardType: TextInputType.multiline,
              onChange: (String text) {
                widget.bloc.description = text;
              },
            )
          ],
        ),
      ),
    );
  }
}
