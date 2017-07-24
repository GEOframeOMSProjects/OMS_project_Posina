kk<-seq(1,42,by=1)

for (k in kk){
	
	


airT=read.table(paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/airT_",k,".csv",sep=""),sep=",",skip=7,na.string="-9999")

airT=airT[1:43824,]


date<-seq(as.Date("1994-01-01"), as.Date("1998-12-31"), "day")
date<-paste(date,"00:00")
meanAirT<-seq(1,length(date),by=1)

b<-seq(1,1826,by=1)
a<-seq(0,length(airT[,3]),by=23)
j<-0
	for (i in b){
	j<-j+1	
	meanAirT[j]=mean(airT[(a[i]+i):(a[i+1]+i),3])
	}	

airTcut<-data.frame(",",date,k)
airTcut[,1]=""
airTcut[,2]=date
airTcut[,3]=meanAirT

write.table(airTcut,paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/airT_",k,"_daily.csv",sep=""),sep=",",row.names = FALSE, col.names=TRUE,na="-9999")

#############################################


total=read.table(paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/total_",k,".csv",sep=""),sep=",",skip=7,na.string="0.0")



meantotal<-seq(1,1826,by=1)
date<-seq(as.Date("1994-01-01"), as.Date("1998-12-31"), "day")
date<-paste(date,"00:00")


b<-seq(1,1826,by=1)
a<-seq(0,length(total[,3]),by=23)
j<-0
	for (i in b){
	j<-j+1	
	meantotal[j]=mean(total[(a[i]+i):(a[i+1]+i),3],na.rm=TRUE)
	}	
	
totalcut<-data.frame(",",date,k)
totalcut[,1]=""
totalcut[,2]=date
totalcut[,3]=meantotal

write.table(totalcut,paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/total_",k,"_daily.csv",sep=""),sep=",",row.names = FALSE, col.names=TRUE,na="-9999")

#############################################


LAI=read.table(paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/LAI_",k,".csv",sep=""),sep=",",skip=7,na.string="-9999")



meanLAI<-seq(1,1826,by=1)
date<-seq(as.Date("1994-01-01"), as.Date("1998-12-31"), "day")
date<-paste(date,"00:00")


b<-seq(1,1826,by=1)
a<-seq(0,length(LAI[,3]),by=23)
j<-0
	for (i in b){
	j<-j+1	
	meanLAI[j]=mean(LAI[(a[i]+i):(a[i+1]+i),3])
	}	
	
LAIcut<-data.frame("",date,k)
LAIcut[,1]=""
LAIcut[,2]=date
LAIcut[,3]=meanLAI

write.table(LAIcut,paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/LAI_",k,"_daily.csv",sep=""),sep=",",row.names = FALSE, col.names=TRUE,na="-9999")

#############################################


rain=read.table(paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/rain_",k,".csv",sep=""),sep=",",skip=7,na.string="-9999")

rain=rain[1:43824,]

cumrain<-seq(1,1826,by=1)
date<-seq(as.Date("1994-01-01"), as.Date("1998-12-31"), "day")
date<-paste(date,"00:00")


b<-seq(1,1826,by=1)
a<-seq(0,length(rain[,3]),by=23)
j<-0
	for (i in b){
	j<-j+1	
	cumrain[j]=sum(rain[(a[i]+i):(a[i+1]+i),3])
	}	
	
Raincut<-data.frame("",date,k)
Raincut[,1]=""
Raincut[,2]=date
Raincut[,3]=cumrain

write.table(Raincut,paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/rain_",k,"_daily.csv",sep=""),sep=",",row.names = FALSE, col.names=TRUE,na="-9999")

#############################################


snow=read.table(paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/snow_",k,".csv",sep=""),sep=",",skip=7,na.string="-9999")

snow=snow[1:43824,]

cumsnow<-seq(1,1826,by=1)
date<-seq(as.Date("1994-01-01"), as.Date("1998-12-31"), "day")
date<-paste(date,"00:00")


b<-seq(1,1826,by=1)
a<-seq(0,length(snow[,3]),by=23)
j<-0
	for (i in b){
	j<-j+1	
	cumsnow[j]=sum(snow[(a[i]+i):(a[i+1]+i),3])
	}	
	
Snowcut<-data.frame("",date,k)
Snowcut[,1]=""
Snowcut[,2]=date
Snowcut[,3]=cumsnow

write.table(Snowcut,paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/snow_",k,"_daily.csv",sep=""),sep=",",row.names = FALSE, col.names=TRUE,na="-9999")

#############################################


etp=read.table(paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/etp_",k,".csv",sep=""),sep=",",skip=7,na.string="-9999")


cumetp<-seq(1,1826,by=1)
date<-seq(as.Date("1994-01-01"), as.Date("1998-12-31"), "day")
date<-paste(date,"00:00")


b<-seq(1,1826,by=1)
a<-seq(0,length(etp[,3]),by=23)
j<-0
	for (i in b){
	j<-j+1	
	cumetp[j]=sum(etp[(a[i]+i):(a[i+1]+i),3])
	}	
	
ETPcut<-data.frame("",date,k)
ETPcut[,1]=""
ETPcut[,2]=date
ETPcut[,3]=cumetp

write.table(ETPcut,paste("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/",k,"/etp_",k,"_daily.csv",sep=""),sep=",",row.names = FALSE, col.names=TRUE,na="-9999")



}



#############################################


Q=read.table("~/Dropbox/Resevoirs/data/PosinaDailyOneYear/Q_202.csv",sep=",",skip=7,na.string="-9999")



meanQ<-seq(1,1826,by=1)
date<-seq(as.Date("1994-01-01"), as.Date("1998-12-31"), "day")
date<-paste(date,"00:00")


b<-seq(1,1826,by=1)
a<-seq(0,length(Q[,3]),by=23)
j<-0
	for (i in b){
	j<-j+1	
	meanQ[j]=mean(Q[(a[i]+i):(a[i+1]+i),3])
	}	
	
Qcut<-data.frame("",date,1)
Qcut[,1]=""
Qcut[,2]=date
Qcut[,3]=meanQ

write.table(Qcut,"~/Dropbox/Resevoirs/data/PosinaDailyOneYear/Q_202_daily.csv",sep=",",row.names = FALSE, col.names=TRUE,na="-9999")


