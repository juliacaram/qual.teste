

qual.teste <- function(){

library(svDialogs)

{
  var.resposta <- dlg_list(c("Contínua", "Contagem", "Binária"),
  title = "A variável resposta é contínua, do tipo contagem ou binária? ")$res
n.var.preditora <- dlg_list(c("Uma", "Duas", "Três ou mais"),
                            title = "Há quantas variáveis preditoras?")$res
tipo.var.preditora <- dlg_list(c("Categórica", "Contínua", "Categórica e contínua"),
                               title = "Qual(Quais) o(s) tipo(s) de variável(eis) preditora(s)")$res
n.categorias <- dlg_list(c("Duas", "Três ou mais", "Não se aplica"),
                         title = "Se pelo menos Uma da variável preditora for categórica, há quantas categorias? 
                         (Se uma das variáveis categóricas diferir em número de categorias, marque 'Três ou mais')")$res
hom.variancia <- dlg_list(c("Sim", "Não"),
                          title = "Há homogeneidade de variância? Se não tiver, transforme os dados
                          e, caso a homogeneidade seja atingida, marque *Sim*")$res
overdispersao <- dlg_list(c("Sim", "Não", "Não se aplica"),
                          title = "Os dados são sobredispersos (overdispersed)?")$res
meus.dados <- c(var.resposta, 
                n.var.preditora,
                tipo.var.preditora,
                n.categorias,
                hom.variancia,
                overdispersao)


x1 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Contínua",
    n.categorias = "Não se aplica",
    hom.variancia = "Sim",
    overdispersao = "Não se aplica"))

x2 <- c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Contínua",
    n.categorias = "Não se aplica",
    hom.variancia = "Não",
    overdispersao ="Não se aplica")


x4 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Categórica",
    n.categorias = "Duas",
    hom.variancia = "Sim",
    overdispersao = "Não se aplica"))
  
x5 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Categórica",
    n.categorias = "Duas",
    hom.variancia = "Não",
    overdispersao = "Não se aplica"))

x6 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Categórica",
    n.categorias = "Três ou mais",
    hom.variancia = "Sim",
    overdispersao = "Não se aplica"))

x7 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Categórica",
    n.categorias = "Três ou mais",
    hom.variancia = "Não",
    overdispersao = "Não se aplica"))

x8 <- c(var.resposta = "Contínua",
    n.var.preditora = "Duas",
    tipo.var.preditora = "Categórica",
    n.categorias = "Três ou mais",
    hom.variancia = "Sim",
    overdispersao = "Não se aplica")

x9 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Duas",
    tipo.var.preditora = "Categórica",
    n.categorias = "Três ou mais",
    hom.variancia = "Não",
    overdispersao = "Não se aplica"))

x10 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Duas",
    tipo.var.preditora = "Categórica e contínua",
    n.categorias = meus.dados[4],
    hom.variancia = "Sim",
    overdispersao = "Não se aplica"))


x11 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Duas",
    tipo.var.preditora = "Categórica e contínua",
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Não se aplica"))

x121 <- (c(var.resposta = "Contínua",
          n.var.preditora = "Duas",
          tipo.var.preditora = "Contínua",
          n.categorias = "Não se aplica",
          hom.variancia = "Sim",
          overdispersao = "Não se aplica"))

x122 <- (c(var.resposta = "Contínua",
           n.var.preditora = "Três ou mais",
           tipo.var.preditora = "Contínua",
           n.categorias = "Não se aplica",
           hom.variancia = "Sim",
           overdispersao = "Não se aplica"))

x12 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Três ou mais",
    tipo.var.preditora = "Categórica e contínua",
    n.categorias = "Três ou mais",
    hom.variancia = "Sim",
    overdispersao = "Não se aplica"))

x125 <- (c(var.resposta = "Contínua",
          n.var.preditora = "Três ou mais",
          tipo.var.preditora = "Categórica",
          n.categorias = "Três ou mais",
          hom.variancia = "Sim",
          overdispersao = "Não se aplica"))

x16 <- (c(var.resposta = "Contagem",
    n.var.preditora = meus.dados[2],
    tipo.var.preditora = meus.dados[3],
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Não"))

x17 <- (c(var.resposta = "Contagem",
    n.var.preditora = meus.dados[2],
    tipo.var.preditora = meus.dados[3],
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Sim"))

x18 <- (c(var.resposta = "Binária",
    n.var.preditora = meus.dados[2],
    tipo.var.preditora = meus.dados[3],
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Não"))


x19 <-  (c(var.resposta = "Binária",
    n.var.preditora = meus.dados[2],
    tipo.var.preditora = meus.dados[3],
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Sim"))


if(setequal(x1,meus.dados))
{dlgMessage("Sugestão: regressão linear simples")
  print(?lm)} else
    
if(setequal(x2,meus.dados))
{dlgMessage("Sugestão: regressão robusta e regressão quantílica")} else
      
if(setequal(x4,meus.dados))
{dlgMessage("Sugestão: teste-t")
print(?t.test)} else
          
if(setequal(x5,meus.dados))
{dlgMessage("Sugestão: teste de Wilcoxon")
print(?wilcox.test)} else
              
if(setequal(x6,meus.dados))
{dlgMessage("Sugestão: anova de um fator")
print(?aov)} else

if(setequal(x7,meus.dados))
{dlgMessage("Sugestão: teste de Kruskal-Wallis")
print(?kruskal.test)} else

if(setequal(x8,meus.dados))
{dlgMessage("Sugestão: anova de dois fatores")
print(?aov)} else

if(setequal(x9,meus.dados))
{dlgMessage("Sugestão: teste de Scheirer–Ray–Hare do pacote 'rcompanion'")} else

if(setequal(x10,meus.dados))
{dlgMessage("Sugestão: ANCOVA")
print(?lm)} else

if(setequal(x11,meus.dados))
{dlgMessage("Desconheço um teste não paramétrico equivalente à ANCOVA")} else

if(setequal(x121,meus.dados))
{dlgMessage("Sugestão: regressão linear múltipla")
print(?lm)} else

if(setequal(x122,meus.dados))
{dlgMessage("Sugestão: regressão linear múltipla")
print(?lm)} else

if(setequal(x12,meus.dados))
{dlgMessage("Sugestão: regressão linear múltipla")
print(?lm)} else

if(setequal(x125,meus.dados))
{dlgMessage("Sugestão: regressão linear múltipla")
print(?lm)} else


if(setequal(x16,meus.dados))
{dlgMessage("Sugestão: GLM com distribuição de Poisson")
print(?glm)} else

if(setequal(x17,meus.dados))
{dlgMessage("Sugestão: GLM com distribuição de Quasipoisson")
print(?glm)} else                         

if(setequal(x18,meus.dados))
{dlgMessage("Sugestão: GLM com distribuição binomial")
print(?glm)} else

if(setequal(x19,meus.dados))
{dlgMessage("Sugestão: GLM com distribuição Quasibinomial")
print(?glm)} 

if(
!setequal(x1,meus.dados) &
!setequal(x10,meus.dados) &
!setequal(x11,meus.dados) &
!setequal(x12,meus.dados) &
!setequal(x121,meus.dados) &
!setequal(x122,meus.dados) &
!setequal(x125,meus.dados) &
!setequal(x16,meus.dados) &
!setequal(x17,meus.dados) &
!setequal(x18,meus.dados) &
!setequal(x19,meus.dados) &
!setequal(x2,meus.dados) &
!setequal(x4,meus.dados) &
!setequal(x5,meus.dados) &
!setequal(x6,meus.dados) &
!setequal(x7,meus.dados) &
!setequal(x8,meus.dados) &
!setequal(x9,meus.dados) )


{  dlgMessage("Desculpe, não posso sugerir o melhor teste :(. Converse com alguém que saiba mais estatística que eu. Pode ser que vc tenha clicado errado, tenha que estudar mais ou precise trabalhar melhor os dados.")
}

}

}

