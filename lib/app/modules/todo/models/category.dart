class Category {
  Data _data;

  Category({Data data}) {
    this._data = data;
  }

  Data get data => _data;
  set data(Data data) => _data = data;

  Category.fromJson(Map<String, dynamic> json) {
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._data != null) {
      data['data'] = this._data.toJson();
    }
    return data;
  }
}

class Data {
  List<Category> _category;

  Data({List<Category> category}) {
    this._category = category;
  }

  List<Category> get category => _category;
  set category(List<Category> category) => _category = category;

  Data.fromJson(Map<String, dynamic> json) {
    if (json['category'] != null) {
      _category = new List<Category>();
      json['category'].forEach((v) {
        _category.add(new Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._category != null) {
      data['category'] = this._category.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
