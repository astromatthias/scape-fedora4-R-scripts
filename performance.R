boxplot(as.matrix(lokal$V1), 
        style="quantile",
        outline=FALSE,
        ylim=c(0,10000),
        xlim=c(0,5),
        ylab="ingest time(ms)",
        col=3,
        xlab="",
        main="box plot ingest time (single node)",
        xaxt="n",
        
        at=0.5
)

boxplot(as.matrix(remote$V1),
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

boxplot(as.matrix(lokalONEfileOhneLB$V1),
        outline=FALSE,
        xaxt="n",
        col=6,
        at=3.5,
        add=TRUE
)


legend("bottomright", inset=.05, title="Fedora 4 (SCAPE)",
       c("local","remote","ONE w LB","ONE wo LB"), fill=3:6, horiz=FALSE)

axis(1,at=c(0.5,1.5,2.5,3.5),labels=c("local","remote","ONE", "w/o Load Balancer"),tick=FALSE)
