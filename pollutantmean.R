pollutantment<-function(directory,pollutant,id=1:332){
  h<-list.files(path = directory,full.names = TRUE)
  d<-data.frame() 
  for(i in id){d<-rbind(d,read.csv(h[i],sep = ',',header = TRUE))}
  if(pollutant=='sulfate'){mean(d$sulfate,na.rm=TRUE)
  }
  else{mean(d$nitrate,na.rm = TRUE)
  }
}