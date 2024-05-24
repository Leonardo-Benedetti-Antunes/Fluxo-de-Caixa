programa {
    logico ids[10] = {0,0,0,0,0,0,0,0,0,0}
    cadeia descricoes[10] = {"0","0","0","0","0","0","0","0","0","0"}
    cadeia datas[10] = {"0","0","0","0","0","0","0","0","0","0"}
    inteiro valores[10] = {0,0,0,0,0,0,0,0,0,0}
    inteiro resultado = 0
  funcao inicio() {
    menu()
  }

  funcao menu(){
    inteiro opcao
    escreva("\tMENU\n")
    escreva("\n 1 - Adicionar receita \n 2 - Adicionar despesa \n 3 - Listar fluxo de caixa \n 4 - Listar saldo atual \n 5 - Sair \n\n")
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
      caso 5:
      sair()
      pare
      caso contrario:
      escreva ("Digite um valor válido")
      menu()
      pare
    }
  }

  funcao adicionar_receita(){
    para (inteiro i = 0; i < 10; i++){
      se(ids[i] == falso){
        ids[i] = 1
        escreva ("adicione a descrição \n")
        leia (descricoes[i])
        escreva ("adicione a data e hora \n")
        leia (datas[i])
        faca{
        escreva ("adicione o valor \n")
        leia (valores[i])
        se (valores[i] <= 0){
          escreva ("insira um valor positivo \n")
        }
        } enquanto (valores[i] <= 0)
        pare
      }
    }
    menu()
  }

  funcao adicionar_despesa(){
    para (inteiro i = 0; i < 10; i++){
      se(ids[i] == falso){
        ids[i] = 1
        escreva ("adicione a descrição \n")
        leia (descricoes[i])
        escreva ("adicione a data e hora \n")
        leia (datas[i])
        faca{
        escreva ("adicione o valor \n")
        leia (valores[i])
        se (valores[i] >= 0){
          escreva ("insira um valor negativo \n")
        }
        } enquanto (valores[i] >= 0)
        pare
      }
    }
    menu()
  }

  funcao listar_fluxo_de_caixa(){
    para (inteiro i = 0; i < 10; i++){
      se (ids[i] == verdadeiro){
        escreva ("valor ",i+1,": ",valores[i],"\n")
      }
    }
    menu()
  }

  funcao listar_saldo_atual(){
    resultado = 0
    para (inteiro i = 0; i < 10; i++){
      se (ids[i] == verdadeiro){
        resultado = resultado + valores[i]
      }
    }
    escreva ("Saldo atual = ", resultado,"\n")
    menu()
  }

  funcao sair(){
    escreva ("Tchau\n|\\_/|Z z z\n(~.~)\n/v v\\S\nSaindo...")
  }
}