

#criar arquivo como Uma função no R
#implementar caixa de opções. GUI e não GUI
#criar apk





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
                         (Se as variáveis categóricas diferirem em número de categorias, marque *Três ou mais*)")$res
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
if(setequal(x1,meus.dados))
{print("Regressão linear Simples")
  print(?lm)}

x2 <- c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Contínua",
    n.categorias = "Não se aplica",
    hom.variancia = "Não",
    overdispersao ="Não se aplica")
  if(setequal(x2,meus.dados))
{print("Veja: regressão robusta e regressão quantílica")}


x4 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Categórica",
    n.categorias = "Duas",
    hom.variancia = "Sim",
    overdispersao = "Não se aplica"))
if(setequal(x4,meus.dados))
{print("Teste-t")
  print(?t.test)}

  
x5 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Categórica",
    n.categorias = "Duas",
    hom.variancia = "Não",
    overdispersao = "Não se aplica"))
if(setequal(x5,meus.dados))
{print("Teste de Wilcoxon")
  print(?wilcox.test)}



x6 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Categórica",
    n.categorias = "Três ou mais",
    hom.variancia = "Sim",
    overdispersao = "Não se aplica"))
if(setequal(x6,meus.dados))
{print("Anova de um fator")
  print(?aov)}


x7 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Uma",
    tipo.var.preditora = "Categórica",
    n.categorias = "Três ou mais",
    hom.variancia = "Não",
    overdispersao = "Não se aplica"))
if(setequal(x7,meus.dados))
{print("Teste de Kruskal")
  print(?kruskal.test)}

x8 <- c(var.resposta = "Contínua",
    n.var.preditora = "Duas",
    tipo.var.preditora = "Categórica",
    n.categorias = "Três ou mais",
    hom.variancia = "Sim",
    overdispersao = "Não se aplica")
if(setequal(x8,meus.dados))
{print("Anova de dois fatores")
  print(?aov)}


x9 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Duas",
    tipo.var.preditora = "Categórica",
    n.categorias = "Três ou mais",
    hom.variancia = "Não",
    overdispersao = "Não se aplica"))
if(setequal(x9,meus.dados))
{print("Veja: Scheirer–Ray–Hare do pacote rcompanion")}


x10 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Duas",
    tipo.var.preditora = "Categórica e contínua",
    n.categorias = meus.dados[4],
    hom.variancia = "Sim",
    overdispersao = "Não se aplica"))
if(setequal(x10,meus.dados))
{print("ANCOVA")
  print(?lm)}


x11 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Duas",
    tipo.var.preditora = "Categórica e contínua",
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Não se aplica"))
if(setequal(x11,meus.dados))
{print("Desconheço um teste não paramétrico equivalente")}

x121 <- (c(var.resposta = "Contínua",
          n.var.preditora = "Duas",
          tipo.var.preditora = "Contínua",
          n.categorias = "Não se aplica",
          hom.variancia = "Sim",
          overdispersao = "Não se aplica"))
if(setequal(x121,meus.dados))
{print("Regressão linear múltipla")
  print(?lm)}

x1221 <- (c(var.resposta = "Contínua",
           n.var.preditora = "Duas",
           tipo.var.preditora = "Contínua",
           n.categorias = "Não se aplica",
           hom.variancia = "Não",
           overdispersao = "Não se aplica"))
if(setequal(x1221,meus.dados))
{print("1. Tente remover alguns outliers")
  print("2. Pode ser que tenha algum problema de amostragem")
  print("3. Veja se é possível usar algum GLM")
  print(?lm)}



x122 <- (c(var.resposta = "Contínua",
           n.var.preditora = "Três ou mais",
           tipo.var.preditora = "Contínua",
           n.categorias = "Não se aplica",
           hom.variancia = "Sim",
           overdispersao = "Não se aplica"))
if(setequal(x122,meus.dados))
{print("Regressão linear múltipla")
  print(?lm)}

x123 <- (c(var.resposta = "Contínua",
           n.var.preditora = "Três ou mais",
           tipo.var.preditora = "Contínua",
           n.categorias = "Não se aplica",
           hom.variancia = "Não",
           overdispersao = "Não se aplica"))
if(setequal(x123,meus.dados))
{print("1. Tente remover alguns outliers")
  print("2. Pode ser que tenha algum problema de amostragem")
  print("3. Veja se é possível usar algum GLM")
  print(?lm)}

x12 <- (c(var.resposta = "Contínua",
    n.var.preditora = "Três ou mais",
    tipo.var.preditora = "Categórica e contínua",
    n.categorias = "Três ou mais",
    hom.variancia = "Sim",
    overdispersao = "Não se aplica"))
if(setequal(x12,meus.dados))
{print("Regressão linear múltipla")
  print(?lm)}

x124 <- (c(var.resposta = "Contínua",
          n.var.preditora = "Três ou mais",
          tipo.var.preditora = "Categórica e contínua",
          n.categorias = "Três ou mais",
          hom.variancia = "Não",
          overdispersao = "Não se aplica"))
if(setequal(x124,meus.dados))
{print("1. Tente remover alguns outliers")
  print("2. Pode ser que tenha algum problema de amostragem")
  print("3. Veja se é possível usar algum GLM")
  print(?lm)}



x125 <- (c(var.resposta = "Contínua",
          n.var.preditora = "Três ou mais",
          tipo.var.preditora = "Categórica",
          n.categorias = "Três ou mais",
          hom.variancia = "Sim",
          overdispersao = "Não se aplica"))
if(setequal(x125,meus.dados))
{print("Regressão linear múltipla")
  print(?lm)}

x126 <- (c(var.resposta = "Contínua",
           n.var.preditora = "Três ou mais",
           tipo.var.preditora = "Categórica",
           n.categorias = "Três ou mais",
           hom.variancia = "Não",
           overdispersao = "Não se aplica"))
if(setequal(x126,meus.dados))
{print("1. Tente remover alguns outliers")
  print("2. Pode ser que tenha algum problema de amostragem")
  print("3. Veja se é possível usar algum GLM")
  print(?lm)}





x16 <- (c(var.resposta = "Contagem",
    n.var.preditora = meus.dados[2],
    tipo.var.preditora = meus.dados[3],
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Não"))
if(setequal(x16,meus.dados))
{print("GLM com distribuição de Poisson")
  print(?glm)}


x17 <- (c(var.resposta = "Contagem",
    n.var.preditora = meus.dados[2],
    tipo.var.preditora = meus.dados[3],
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Sim"))
if(setequal(x17,meus.dados))
{print("GLM com distribuição de Quasipoisson")
  print(?glm)}

x18 <- (c(var.resposta = "Binário",
    n.var.preditora = meus.dados[2],
    tipo.var.preditora = meus.dados[3],
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Não"))
if(setequal(x18,meus.dados))
{print("GLM com distribuição binomial")
  print(?glm)}


x19 <-  (c(var.resposta = "Binário",
    n.var.preditora = meus.dados[2],
    tipo.var.preditora = meus.dados[3],
    n.categorias = meus.dados[4],
    hom.variancia = "Não",
    overdispersao = "Sim"))
if(setequal(x19,meus.dados))
{print("GLM com distribuição Quasibinomial")
  print(?glm)}
  
}


