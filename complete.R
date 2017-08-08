complete<-function(directory,id=1:332){
  h1<-list.files(path = directory,full.names = TRUE)
  d1<-data.frame()
  for(i in id){d1<-rbind(d1,read.csv(h1[i],sep = ',',header = TRUE))}
  z<-data.frame(matrix(ncol=2,nrow=0))
  x<-c('id','nobs')
  colnames(z)<-x 
  for(j in id){z[j,'id']<-j
  z[j,'nobs']<-length(which(!is.na(d1$sulfate&d1$nitrate)&d1$ID==j))
  }
  na.omit(z)
}