class Validator {
  String? validarInput(String? input){
    if(input == null || input == ""){
      return "o valor não pode ser nulo";
    }else{
      try{
        int valorInteiro = int.parse(input);
        if(valorInteiro < 0){
          return "Valor não pode ser negativo";
        }
      }catch(e){
        return "Insira um numero inteiro válido";
      }
    }
    return null;
  }
}