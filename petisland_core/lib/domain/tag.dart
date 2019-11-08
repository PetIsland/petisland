part of petisland_core.domain;

class Tag extends BaseModel {
  String title;
  String description;

  Tag({
    String id,
    Account createBy,
    DateTime createAt,
    DateTime updateAt,
    this.title,
    this.description,
  }) : super(id, createAt, updateAt, createBy);

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = super.toJson();
    _addValueToMap('title', title, map);
    _addValueToMap('description', description, map);
    return map;
  }
}
