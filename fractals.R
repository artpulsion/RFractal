library(grid)
grid.newpage()
rm(list = ls())
ratio <- 0.4
pmax <- 2 # Depth
vp1 <- viewport(w=1, h=1)
vp2 <- viewport(w=ratio, h=ratio, just=c(0.75*sin(2*pi*1/5)+0.5, 0.75*cos(2*pi*1/5)+0.75*pi*1/5))
vp3 <- viewport(w=ratio, h=ratio, just=c(0.75*sin(2*pi*0/5)+0.5, 0.75*cos(2*pi*0/5)+0.75*pi*1/5))
vp4 <- viewport(w=ratio, h=ratio, just=c(0.75*sin(2*pi*2/5)+0.5, 0.75*cos(2*pi*2/5)+0.75*pi*1/5))
vp5 <- viewport(w=ratio, h=ratio, just=c(0.75*sin(2*pi*3/5)+0.5, 0.75*cos(2*pi*3/5)+0.75*pi*1/5))
vp6 <- viewport(w=ratio, h=ratio, just=c(0.75*sin(2*pi*4/5)+0.5, 0.75*cos(2*pi*4/5)+0.75*pi*1/5))
pushViewport(vp1)
grid.rect(gp=gpar(fill="white", col=NA))
m <- as.matrix(expand.grid(rep(list(2:6), pmax)))
for (j in 1:nrow(m))
{
  for(k in 1:ncol(m)) {pushViewport(get(paste("vp",m[j,k],sep="")))}
  grid.circle(gp=gpar(col="dark grey", lty="solid", fill=rgb(sample(0:255, 1),sample(0:255, 1),sample(0:255, 1), alpha= 95, max=255)))
  upViewport(pmax)
}