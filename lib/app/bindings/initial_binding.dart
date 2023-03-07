// a binding sobreescreve a rota da view
// pra páginas complexas, fica mais organizado usar bindings ao invés de
// fazer tudo na view

// permanent
// "permanent: true" mantém o controlador ativo, útil para manter configurações,
// uma boa prática, nesse caso, para serviços que serão usados no app inteiro
// é ter um arquivo de inicialização como o "initial_binding", onde
// chamamos o SharedPreferences ou GetStorage por exemplo
