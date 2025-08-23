class Validator {
  String? validarInput(String? input){
    if(input != null || input != ""){
      return "o valor não pode ser nulo";
    }else{
      try{
        int? valorInteiro = int.tryParse(input!);
        
      }catch(e){
        return e.toString();
      }
    }
  }
}