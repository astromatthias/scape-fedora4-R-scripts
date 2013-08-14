boxplot(as.matrix(lokal$V1), 
        style="quantile",
        outline=FALSE,
        ylim=c(0,22000),
        xlim=c(0,5),
        ylab="ingest time(ms)",
        col=3,
        xlab="",
        main="box plot ingest time Fedora 4",
        xaxt="n",
        at=0.5
)

boxplot(as.matrix(lokalONEfileStandalone$V1),
        outline=FALSE,
        xaxt="n",
        col=4,
        at=1.5,
        add=TRUE
)

boxplot(as.matrix(lokalONEfile$V1),
        outline=FALSE,
        xaxt="n",
        col=5,
        at=2.5,
        add=TRUE
)

boxplot(as.matrix(lokalONEfileNode3$V1),
        outline=FALSE,
        xaxt="n",
        col=6,
        at=3.5,
        add=TRUE
)

boxplot(as.matrix(lokalONEfileNode6$V1),
        outline=FALSE,
        xaxt="n",
        col=7,
        at=4.5,
        add=TRUE
)



legend("topleft", inset=.05, title="Fedora 4 (SCAPE)", cex=0.75,
       c("DESKTOP stand alone (error quote 0%)", "Open Nebula VM stand alone (error quote 0%)", "Open Nebula VM 1 node (error quote 0%)","Open Nebula VM 3 nodes (error quote 30%) ","Open Nebula VM 6 nodes (error quote 22%)"), fill=3:7, horiz=FALSE)

axis(1,at=c(0.5,1.5,2.5,3.5,4.5),labels=c("DESKTOP","stand alone","1 node","3 nodes","6 nodes"),tick=FALSE)
