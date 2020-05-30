library(dplyr)
setwd('/home/grecar/bitacora/Bedu/Cursos/R/20200508.InicioCurso/A2-Estadistica-Programacion-con-R-2020/Sesion-03/')

df_001 <- read.csv("Dataset/rprog_data_specdata/specdata/001.csv")
df_001_cc <- data_frame(as.factor(complete.cases(df_001)))
names(df_001_cc) <- c('cc')

df_001_cc_reg <- df_001_cc %>% filter(cc==TRUE) %>% count ()

df_002 <- read.csv("Dataset/rprog_data_specdata/specdata/002.csv")
df_002_cc <- data_frame(as.factor(complete.cases(df_002)))
names(df_002_cc) <- c('cc')

df_002_cc_reg <- df_002_cc %>% filter(cc==TRUE) %>% count ()

data_frame_resultado <- data_frame(archivo=c('001.csv','002.csv'),
           cc=c(df_001_cc_reg,df_002_cc_reg))

View(data_frame_resultado) 

df_001_cc$filename<-"001.csv"
df_002_cc$filename<-"002.csv"
df_all<-rbind(df_001_cc,df_002_cc)
df_result_2<-df_all %>% group_by(filename) %>% filter(completos==TRUE) %>% count()
