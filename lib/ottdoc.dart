

class Doc {
  String? image;

  Doc(this.image);

}
List limg = docima.map((e) => Doc(e["image"])).toList();
var docima=[
  {"image":"asset/mv.jpg",},
  {"image":"asset/mv2.jpg",},
  {"image":"asset/mv3.jpg",},
  {"image":"asset/mv4.jpg",},
  {"image":"asset/mv5.jpg",},
  {"image":"asset/mv9.jpg",},
  {"image":"asset/mv12.jpg",},
];
/////////////
class Doctwo
{
  String? images;
  String? text;
  Doctwo(this.images,this.text);
}
List limgone=dimg.map((e) => Doctwo(e["images"],e[ "text"])).toList();
var dimg=[{"images":"asset/mv14.jpg","text":"Drama"},
  {"images":"asset/mv2.jpg","text":"Brave"},
  {"images":"asset/mv10.jpg","text":"s.s"},
  {"images":"asset/mv12.jpg","text":"tse"},
  {"images":"asset/mv6.jpg","text":"Roja"},
  {"images":"asset/mv.jpg","text":"Avatar"},


];
//////////////////
class Drm {
  String? imageo;

  Drm(this.imageo);

}
List limgo = docimad.map((e) => Drm(e["imageo"])).toList();
var docimad=[

  {"imageo":"asset/mv15.jpg",},
  {"imageo":"asset/mv14.jpg",},
  {"imageo":"asset/mv13.jpg",},
  {"imageo":"asset/mv5.jpg",},
  {"imageo":"asset/mv9.jpg",},
  {"imageo":"asset/mv12.jpg",},
];
////////////////////
class Txt{
  String? tl,stl;
  Txt(this.tl,this.stl);
}
List tltxt=tletxt.map((e) => Txt(e["tl"], e["stl"])).toList();
var tletxt=[
  {"tl":"Episode 1","stl":"Season1"},
  {"tl":"Episode 2","stl":"Season2"},
  {"tl":"Episode 3","stl":"Season3"},
  {"tl":"Episode 4","stl":"Season4"},
  {"tl":"Episode 5","stl":"Season5"},
  {"tl":"Episode 6","stl":"Season6"},
  {"tl":"Episode 7","stl":"Season7"},
  {"tl":"Episode 1","stl":"Season1"},
  {"tl":"Episode 2","stl":"Season2"},
  {"tl":"Episode 3","stl":"Season3"},
  {"tl":"Episode 4","stl":"Season4"},
  {"tl":"Episode 5","stl":"Season5"},
  {"tl":"Episode 6","stl":"Season6"},
  {"tl":"Episode 7","stl":"Season7"},


];
////////
