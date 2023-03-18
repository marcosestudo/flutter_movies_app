class MovieModel {
  int id = 0;
  String titulo = "";
  String sinopse = "";
  String img = "";
  String diretor = "";
  late bool liked;

  MovieModel();

  MovieModel.fromJson(Map<String, dynamic> json){
      id = json['id'];
      titulo = json['titulo'];
      sinopse = json['sinopse'];
      img = json['img'];
      diretor = json['diretor'];
      liked = json['liked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['titulo'] = this.titulo;
    data['sinopse'] = this.sinopse;
    data['img'] = this.img;
    data['diretor'] = this.diretor;
    data['liked'] = this.liked;
    return data;
  }
}