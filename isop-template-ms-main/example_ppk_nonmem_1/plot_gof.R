library(xpose4)

pdf("gof_plots_run1_final_model.pdf",width=8,height=6)
rm(list=ls())
xpdb<-xpose.data("1")
basic.gof(xpdb,col=1,type='p')
samp.id<-sample(xpdb@Data$ID,12)  # 12 random IDs
ind.plots(xpdb,subset="ID%in%samp.id")
ranpar.hist(xpdb)
ranpar.qq(xpdb)
ranpar.splom(xpdb)
ranpar.vs.cov(xpdb)

xpose.VPC(
  vpctab="/usr/bigsky/IL-33/POWER_CALC/MODEL/vpc_dir5/vpctab1",
  vpc.info="/usr/bigsky/IL-33/POWER_CALC/MODEL/vpc_dir5/vpc_results.csv",
  cex=0.5,logy=T
  )

dev.off()


pdf("gof_plots_run2_base_model.pdf",width=8,height=6)
rm(list=ls())
xpdb<-xpose.data("2")
basic.gof(xpdb,col=1,type='p')
samp.id<-sample(xpdb@Data$ID,12)  # 12 random IDs
ind.plots(xpdb,subset="ID%in%samp.id")
ranpar.hist(xpdb)
ranpar.qq(xpdb)
ranpar.splom(xpdb)
ranpar.vs.cov(xpdb)

xpose.VPC(
  vpctab="/usr/bigsky/IL-33/POWER_CALC/MODEL/vpc_dir4/vpctab2",
  vpc.info="/usr/bigsky/IL-33/POWER_CALC/MODEL/vpc_dir4/vpc_results.csv",
  cex=0.5,logy=T
)

dev.off()