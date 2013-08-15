quantile(remoteONEFedoraDefaultStandalone_1000$V1)
mean(remoteONEFedoraDefaultStandalone_1000$V1)
quantile(remoteONEFedoraDefaultNode6_1000$V1)
mean(remoteONEFedoraDefaultNode6_1000$V1)


boxplot(as.matrix(remoteONEFedoraDefaultStandalone_1000$V1), 
        style="quantile",
        outline=FALSE,
        ylim=c(0,3000),
        xlim=c(0,2),
        ylab="ingest time(ms)",
        col=3,
        xlab="",
        main="ingest time Fedora 4 [objects/fcr:new] 1000 objects",
        xaxt="n",
        at=0.5
)

boxplot(as.matrix(remoteONEFedoraDefaultNode6_1000$V1),
        outline=FALSE,
        xaxt="n",
        col=4,
        at=1.5,
        add=TRUE
)




legend("topleft", inset=.05, title="Fedora 4 (Default objects/fcr:new)", cex=0.75,
       c( "Open Nebula VM stand alone (error quote 0%)",  "Open Nebula VM 6 nodes (error quote 0%)"), fill=3:4, horiz=FALSE)

axis(1,at=c(0.5,1.5),labels=c("stand alone","6 nodes"),tick=FALSE)
