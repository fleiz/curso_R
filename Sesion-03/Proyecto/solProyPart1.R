pollutantmean<-function(directorio,pollutant,id){
  #setwd(directorio)
  files<-list.files(pattern = "*.csv")
  df<-data.frame()
  #Option 1 cuando solo itero en id
  for (i in id){
  #Option 2 cuando itero en todo files
    #for (i in seq_along(files)){
    filedir=paste(files[i],sep="")
    #print(filedir)
    df<-rbind(df,read.csv(filedir)) 
  }
  #Option 1 cuando filtro por renglones (casos completos) y solo la columna pollutant
  #df_subset<-df[complete.cases(df),pollutant] #al parecer esta opción omite info
  #Option 2 cuando solo me quedo con la columna pollutant y luego solo me quedo con lo que no es NA
  df_subset<-df[[pollutant]]
  df_subset2<-df_subset[complete.cases(df_subset)]
  return (mean(df_subset2, na.rm = TRUE))
}
  #Option3 cuando no itero solo en en id tengo que buscar por id en ID
  #df_subset<-df[which(df$ID==id),c(pollutant,"ID")]
  #pollu_vec<-df_subset[complete.cases(df_subset),pollutant]
  #return(mean(pollu_vec))
  #mean(df[complete.cases(df),]$sulfate)  
  
#Option 4: Utilizar dplyr
#  df_subset<-filter(df, ID %in% id)
#  df_subset %>% select (pollutant) %>% summarise_ (promedio=mean(pull(.),na.rm = TRUE))
#pull() me permite convertir un vector a un data_frame



