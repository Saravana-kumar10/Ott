


class Model
{
  String? image;
  String? text;
  Model(this.image,this.text);
}

List lis = modelData.map((e) => Model(e["image"], e["text"])).toList();

var modelData = [

  {"image":"asset/aa.jpg","text":"lv1"},
  {"image":"asset/vg.JPG","text":"lv1"},
  {"image":"asset/im.jpg","text":"lv2"},
  {"image":"asset/mob.jpg","text":"lv3"},
  {"image":"asset/vg.JPG","text":"lv1"},
  {"image":"asset/mob.jpg","text":"lv4"},
  {"image":"asset/im2.jpg","text":"lv5"},
  {"image":"asset/vg.JPG","text":"lv1"},
  {"image":"asset/im2.jpg","text":"lv6"},
  {"image":"asset/aa.jpg","text":"hi"},
  {"image":"asset/im.jpg","text":"hi2"},
  {"image":"asset/vg.JPG","text":"lv1"},
  {"image":"asset/im2.jpg","text":"hi3"},
];


///2nd list dashb
///


class Modetwo
{
  String? images;
  Modetwo(this.images);

}
List li = modlis.map((e) => Modetwo(e["images"])).toList();
var modlis=[
  {"images":"asset/mob.jpg"},
  {"images":"asset/vg.JPG"},
  {"images":"asset/mob.jpg"},
  {"images":"asset/im2.jpg"},
  {"images":"asset/vg.JPG"},
  {"images":"asset/im3.jpg"},
  {"images":"asset/im.jpg"},
  {"images":"asset/vg.JPG"},
  {"images":"asset/aa.jpg"},
  {"images":"asset/vg.JPG"},

];