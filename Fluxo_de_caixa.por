programa {
  funcao inicio() {
    logico ids[10] 
    cadeia descricoes[10]
    cadeia datas[10]
    inteiro valores[10]
    menu()

  }
  funcao menu(){
    inteiro opcao

    escreva("\t\t\t\t\t\tMENU\n")
    escreva("\n\t 1 - Adicionar receita \n\t 2 - Adicionar despesa \n\t 3 - Listar fluxo de caixa \n\t 4 - Listar saldo atual \n\n")

    escreva("O que deseja realizar?\t")
    leia(opcao)

    escolha(opcao){
      caso 1:
      adicionar_receita()
      pare
      caso 2:
      adicionar_despesa()
      pare
      caso 3:
      listar_fluxo_de_caixa()
      pare
      caso 4:
      listar_saldo_atual()
      pare
    }

  }
  funcao listar_fluxo_de_caixa(){
    escreva("a")
    para(inteiro i = 0; i < 10; i++){
      se(ids[i] == falso){
        escreva(descricoes[i],"\n")
      }
    }
  }
}