Algoritmo "imposto"
// Disciplina   : [Linguagem e L?gica de Programa??o]
// Professor   : Nelio Alves
// Descri??o   : calcula o imposto de renda que uma pessoa deve pagar
// Autor(a)    : Marcio da Silva
// Data atual  : 21/09/2022
Var
   salario, prestService, capitalGain,medico, educacao:real
   impSalario, impService, impCapital, maxDedutivel:real
   gastoDdedutivel, impBruto, impdevido:real

Inicio

   escreva("Renda anual com sal?rio: ")
   leia(salario)
   escreva("Renda anual com presta??o de servi?o: ")
   leia(prestService)
   escreva("Renda anual com ganho de capital: ")
   leia(capitalGain)
   escreva("Gastos m?dicos: ")
   leia(medico)
   escreva("Gastos educacionais: ")
   leia(educacao)

   se ((salario /12) > 5000.00)entao
      impSalario <- salario * 0.2
   senao
      se ((salario/12) > 3000.00)entao
         impSalario <- salario * 0.1
      senao
         impSalario <- 0.00
      fimse
   fimse

   impService <- prestService * 0.15
   impCapital <- capitalGain * 0.2

   impBruto <- impSalario + impService + impCapital
   maxDedutivel <- impBruto * 0.3
   gastoDdedutivel <- medico + educacao


   escreval()
   escreval("RELAT?RIO DE IMPOSTO DE RENDA")
   escreval()

   escreval("CONSOLIDADO DE RENDA:")
   escreval ("Imposto sobre sal?rio: ", impSalario:8:2)
   escreval ("Imposto sobre servi?os: ",impService:8:2)
   escreval ("Imposto sobre ganho de capital: ",impCapital:8:2)

   escreval()
   escreval("DEDU??ES:")
   escreval("M?ximo dedut?vel: ",maxDedutivel:8:2)
   escreval("Gastos dedut?veis: ",gastoDdedutivel:8:2)

   escreval()

   escreval("RESUMO:")
   escreval("Imposto bruto total: ",impBruto:8:2)

   se(impBruto <  gastoDdedutivel)entao
      escreval("Abatimento: ", maxDedutivel:8:2)
      impdevido <- impBruto - maxDedutivel
   senao
      escreval("Abatimento: ", gastoDdedutivel:8:2)
      impdevido <- impBruto - gastoDdedutivel
   fimse

   escreval("Imposto devido: ",impdevido:8:2)

Fimalgoritmo