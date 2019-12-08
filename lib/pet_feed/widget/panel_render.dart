part of petisland.pet_feed.widget;

abstract class PanelRender<T extends Panel> extends TStatelessWidget {
  final T panel;
  static Map<Type, dynamic> renders = <Type, dynamic>{Post: renderPost, PetCategory: renderPetCategory};

  const PanelRender(this.panel, {Key key}) : super(key: key);

  Widget render(PanelDetail item) {
    final dynamic render = renders[item.postItem.runtimeType];
    return render != null ? render(item) : SizedBox();
  }
}

Widget renderPost(Post item) {
  return PostWidget(item);
}

Widget renderPetCategory(PetCategory item) {
  return PetCategoryWidget(item);
}
