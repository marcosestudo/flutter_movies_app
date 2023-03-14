import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:primeiro_app/app/data/model/movie_model.dart';
import 'package:primeiro_app/app/data/repository/movie_repository.dart';
import 'package:primeiro_app/app/routes/app_pages.dart';

class HomeController extends GetxController {

  bool isLoading = true;

  List<MovieModel> movieList = [];
  final MovieRepository? movieRepository;
  HomeController({@required this.movieRepository}) : assert(movieRepository != null);

  void onPressed() {
    // Get.toNamed() método para navegação por rota nomeada no getx com possibilidade de voltar
    // Get.offNamed() navega pra página e não pode voltar pra página anterior, se clicar na seta pra voltar, sai do app
    // Get.offAllNamed() navega pra uma página que fecha todas as anteriores
    Get.toNamed(Routes.COUNTER);
  }

  // função onInit() é chamada assim que a tela começa a ser carregada
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  // // simulando busca em API pra demonstrar gerenciamento de estados
  // void fetchData() {
  //   isLoading = true;
  //   update(); // chama o getbuilder em home_page.dart para atualizar a página
  //   // call repo to fetch data
  //   Future.delayed(const Duration(seconds: 3)).then((value) { // delay de 3 segundos pra simular chamada
  //     isLoading = false;
  //     update();
  //   });
  // }

  void reloadData() {
    // clicar no botão de reload chama o fetchData() nesse exemplo simples
    // poderíamos ter chamado diretamente a função fetchdata() no onPressed,
    // mas em casos mais complexos em que fôssemos arregar a função com outros
    // parâmetros, por exemplo, essa função seria útil, então vai ficar aqui de exemplo
    fetchData();
  }

  //Função que busca os dados da API
  void fetchData() {
    movieRepository?.getAll().then((value) {
      movieList = value;
      isLoading = false;
      update();
    });
  }
}