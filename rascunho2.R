library(readr)

salvador <- read_delim("data/salvador.csv", 
                       delim = ";", escape_double = FALSE, trim_ws = TRUE)

library(dplyr)
library(lubridate)

levels(as.factor(salvador$))

salvador2 <- salvador
salvador2$DthAtualizaCadastralEmpreend <- year(salvador$DthAtualizaCadastralEmpreend)

data <- salvador2 %>% group_by(DthAtualizaCadastralEmpreend) %>% 
  select(SigTipoGeracao) %>% 
  filter(DthAtualizaCadastralEmpreend == 2022)

levels(as.factor(data$SigTipoGeracao))


ata5 <- salvador2 %>% group_by(DthAtualizaCadastralEmpreend)%>% 
  filter(DthAtualizaCadastralEmpreend == 2020)
levels(as.factor(data$DthAtualizaCadastralEmpreend))
