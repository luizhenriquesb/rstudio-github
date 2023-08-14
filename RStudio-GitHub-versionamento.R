# RSTUDIO E GITHUB --------------------------------------------------------

# Baixar o pacote "usethis"------------------------------------------------
# install.packages("usethis")
library(usethis)

# Se apresentar para o GitHub ---------------------------------------------
usethis::use_git_config(user.name = "(seu nome)",
                        user.email = "(email)")

# Gerar GitHub Token ------------------------------------------------------
usethis::create_github_token()

# 'NOTE': qualquer coisa para lembrar de qual computador ou para qual situação
# o GitHub Token foi gerado
# Exemplo de 'note': R:GITHUB_PAT_xxxxxxxxx()

# Salvar GitHub Token no PC -----------------------------------------------
# 1. Método 1: edit_r_environ() ----
usethis::edit_r_environ() # Linha 1: GITHUB_PAT="[colar GitHub Token]"
                          # Linha 2: Deixar em branco

# 2. Método 2: gitcreds_set() ----
gitcreds::gitcreds_set()
# -> Your current credentials for 'https://github.com':
#   protocol: https
#   host    : github.com
#   username: xxxxxxxxxxx
#   password: <-- hidden -->
#     
# -> What would you like to do? 
# 1: Keep these credentials
# 2: Replace these credentials
# 3: See the password / token

# Reinicar o RStudio ------------------------------------------------------
# Atalho: (crtl + SHIFT + F10)

# Verificar se deu tudo certo ---------------------------------------------
usethis::git_sitrep()

# """""""" AVISO """""""" -------------------------------------------------
# O processo acima deve ser feito apenas uma vez por usuário do PC
# Se o processo já foi feito, basta seguir somente os passos abaixo

# 'Ativando' o Git --------------------------------------------------------
usethis::use_git()
# Essa função 'avisa' que esse projeto 'quer' se tornar um repositório do 
# GitHub, mas todas as alterações ficam salvas apenas no nosso PC. Para enviar
# esse repositório local para o GitHub, devemos ativá-lo através da função
# usethis::use_github()
 

# 'Ativando' o GitHub -----------------------------------------------------
usethis::use_github()
# Cria o repositório no GitHub. Essa função deve ser usada só depois de dar um
# commit nos nossos arquivos

# Push --------------------------------------------------------------------
usethis::pr_push()
# Coloca no GitHub as mudanças que fizemos a partir do PC local

# Pull --------------------------------------------------------------------
usethis::pr_pull()
#'Puxa' do GitHub para o PC


