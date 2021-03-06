org.Mxanthus.dbORGANISM <- "Myxococcus xanthus DK 1622"

exampleGene <- c('MXAN_RS17185','MXAN_RS24660','MXAN_RS14900','MXAN_RS22750','MXAN_RS11420','MXAN_RS16065','MXAN_RS15030','MXAN_RS16055','MXAN_RS16315','MXAN_RS17430','MXAN_RS16105','rplU','MXAN_RS16085','MXAN_RS10035','MXAN_RS15975','MXAN_RS14890','MXAN_RS23195','MXAN_RS17205','MXAN_RS23815','rpsF','MXAN_RS01760','MXAN_RS11105','MXAN_RS07100','MXAN_RS16110','MXAN_RS23040','MXAN_RS16000','MXAN_RS14905','thrS','MXAN_RS30155','MXAN_RS16115','MXAN_RS31625','MXAN_RS06140','MXAN_RS07105','MXAN_RS17425','MXAN_RS16020','tsf','MXAN_RS14910','MXAN_RS16120','MXAN_RS16015','MXAN_RS17420','MXAN_RS13590','MXAN_RS24680','lysS','MXAN_RS36250','MXAN_RS06935','def','MXAN_RS15990', 'MXAN_RS00020', 'MXAN_RS16365','MXAN_RS16370','MXAN_RS27790','MXAN_RS27820','MXAN_RS27835','MXAN_RS27865','MXAN_RS27935','MXAN_RS27950','efp','MXAN_RS28000','pilB','MXAN_RS28095','MXAN_RS28110','MXAN_RS28160','MXAN_RS28170','MXAN_RS28185','MXAN_RS28200','MXAN_RS28260','MXAN_RS28270','MXAN_RS28340','MXAN_RS28375','MXAN_RS28445','MXAN_RS28465','MXAN_RS28470') 

versions <- new.env()

versions[["1.0.0"]] <- "AH75133"

loadOldData <- function(v){
    ah <- suppressMessages(AnnotationHub::AnnotationHub())
    return(ah[[versions[[v]], verbose=FALSE]])
}

loadOrgMxanthusDb <- function() {
    ah <- suppressMessages(AnnotationHub::AnnotationHub())
    ah[["AH78369", verbose=FALSE]]
}

.onLoad <- function(libname, pkgname)
{
    ns <- asNamespace(pkgname)
    makeCachedActiveBinding(pkgname, loadOrgMxanthusDb , env=ns)
    namespaceExport(ns, pkgname)
}
