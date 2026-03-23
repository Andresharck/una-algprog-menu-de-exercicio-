programa
{
  funcao inicio()
  {
    inteiro opcao
    cadeia pausa

    faca
    {
      limpa()
      escreva("-----------------------------------------\n")
      escreva("MENU DE EXERCICIOS - PORTUGOL STUDIO\n")
      escreva("-----------------------------------------\n")
      escreva("1. Par ou Ímpar\n")
      escreva("2. Maior de dois\n")
      escreva("3. Calculadora\n")
      escreva("4. Validação de nota\n")
      escreva("5. Maior e menor (0 para parar)\n")
      escreva("6. Simulador de caixa\n")
      escreva("7. Desconto\n")
      escreva("8. Contagem\n")
      escreva("9. Soma até N\n")
      escreva("10. Regressiva + soma\n")
      escreva("0. Sair\n")
      escreva("-----------------------------------------\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha (opcao)
      {
        caso 1:
          inteiro num
          escreva("Digite um número: ")
          leia(num)

          se (num % 2 == 0)
            escreva("PAR")
          senao
            escreva("ÍMPAR")
          pare

        caso 2:
          inteiro a, b
          leia(a, b)

          se (a > b)
            escreva("Maior: ", a)
          senao se (b > a)
            escreva("Maior: ", b)
          senao
            escreva("Iguais")
          pare

        caso 3:
          inteiro op
          real n1, n2

          escreva("1-Somar 2-Subtrair 3-Multiplicar 4-Dividir\n")
          leia(op)
          leia(n1, n2)

          se (op == 1)
            escreva(n1 + n2)
          senao se (op == 2)
            escreva(n1 - n2)
          senao se (op == 3)
            escreva(n1 * n2)
          senao se (op == 4)
          {
            se (n2 != 0)
              escreva(n1 / n2)
            senao
              escreva("Divisão por zero")
          }
          senao
            escreva("Opção inválida")
          pare

        caso 4:
          inteiro nota

          faca {
            escreva("Digite nota (0-100): ")
            leia(nota)
          } enquanto (nota < 0 ou nota > 100)
          pare

        caso 5:
          inteiro valor
          inteiro maior = -999999
          inteiro menor = 999999

          faca {
            leia(valor)

            se (valor != 0)
            {
              se (valor > maior) maior = valor
              se (valor < menor) menor = valor
            }

          } enquanto (valor != 0)

          escreva("Maior: ", maior, "\n")
          escreva("Menor: ", menor)
          pare

        caso 6:
          real saldo = 1000
          inteiro escolhaCaixa

          faca {
            escreva("\n1-Depositar\n2-Sacar\n3-Ver saldo\n4-Sair\n")
            leia(escolhaCaixa)

            se (escolhaCaixa == 1)
            {
              real dep
              leia(dep)

              se (dep > 0)
                saldo = saldo + dep
            }
            senao se (escolhaCaixa == 2)
            {
              real saque
              leia(saque)

              se (saque > 0 e saque <= saldo)
                saldo = saldo - saque
              senao
                escreva("Saque inválido")
            }
            senao se (escolhaCaixa == 3)
            {
              escreva("Saldo: ", saldo)
            }

          } enquanto (escolhaCaixa != 4)

          escreva("Saldo final: ", saldo)
          pare

        caso 7:
          real valorCompra, desconto
          inteiro categoria

          leia(valorCompra, categoria)

          se (categoria == 1)
            desconto = valorCompra * 0.05
          senao se (categoria == 2)
            desconto = valorCompra * 0.10
          senao se (categoria == 3)
            desconto = valorCompra * 0.15
          senao
          {
            escreva("Categoria inválida")
            pare
          }

          escreva("Desconto: ", desconto, "\n")
          escreva("Total: ", valorCompra - desconto)
          pare

        caso 8:
          inteiro i, n
          inteiro pos = 0, neg = 0, zero = 0

          para (i = 1; i <= 10; i++)
          {
            leia(n)

            se (n > 0) pos++
            senao se (n < 0) neg++
            senao zero++
          }

          escreva("Positivos: ", pos, "\n")
          escreva("Negativos: ", neg, "\n")
          escreva("Zeros: ", zero)
          pare

        caso 9:
          inteiro N, soma = 0

          leia(N)

          para (inteiro i = 1; i <= N; i++)
            soma = soma + i

          escreva("Soma: ", soma)
          pare

        caso 10:
          inteiro numN, somaTotal = 0

          leia(numN)

          para (inteiro i = numN; i >= 1; i--)
          {
            escreva(i, " ")
            somaTotal = somaTotal + i
          }

          escreva("\nSoma = ", somaTotal)
          pare

        caso 0:
          escreva("Saindo...\n")
          pare

        caso contrario:
          escreva("Opção inválida!\n")
          util.aguarde(2000)
      }

      escreva("\nPressione ENTER para voltar ao menu...")
      leia(pausa)

    } enquanto (opcao != 0)
  }
}

