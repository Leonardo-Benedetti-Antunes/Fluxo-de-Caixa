programa {
    logico ids[10]
    cadeia descricoes[10]
    cadeia datas[10]
    inteiro valores[10]
  funcao inicio(){
    menu()
    }
  funcao adicionar_receita(){
    para (inteiro i = 0; i < 10; i++){
      se(ids[i] == falso){
        escreva ("adicione a descrição \n")
        leia (descricoes[i])
        escreva ("adicione a data e hora \n")
        leia (datas[i])
        faca{
        escreva ("adicione o valor \n")
        leia (valores[i])
        se (valores[i] <= 0){
          escreva ("insira um valor positivo")
        }
        } enquanto (valores[i] <= 0)
        pare
      }
    }
  }
  funcao adicionar_despesa(){
    para (inteiro i = 0; i < 10; i++){
      se(ids[i] == falso){
        escreva ("adicione a descrição \n")
        leia (descricoes[i])
        escreva ("adicione a data e hora \n")
        leia (datas[i])
        faca{
        escreva ("adicione o valor \n")
        leia (valores[i])
        se (valores[i] >= 0){
          escreva ("insira um valor negativo")
        }
        } enquanto (valores[i] >= 0)
        pare
      }
    }
  }
  funcao listar_saldo_atual(inteiro resultado){
    resultado = 0
    para (inteiro i = 0; i < 10; i++){
      se (ids[i]){
        resultado =+ ids[i]
        escreva ("valor ",i+1,": ",ids[i])
      }
    }
    escreva ("\n Saldo atual = ", resultado)
  }
}
