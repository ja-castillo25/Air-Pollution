corr<-function(directory,threshold=0){
  h2<-list.files(path = directory,full.names = TRUE)
  d2<-data.frame()
  t<-c()
  z<-data.frame()
  for(i in 1:332){d2<-rbind(d2,read.csv(h2[i],sep = ',',header = TRUE))}
  for(j in 1:332){if(length(which(!is.na(d2$sulfate&d2$nitrate)&d2$ID==j))>threshold){
    z<-d2[which(!is.na(d2$sulfate&d2$nitrate)),]
    t[j]<-cor(z$sulfate[z$ID==j],z$nitrate[z$ID==j])
  }
  }
  t[!is.na(t)]
}
