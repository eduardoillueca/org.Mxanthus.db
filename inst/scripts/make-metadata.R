meta <- data.frame(
  Title = c("Genome wide annotation for Myxococcus xanthus DK 1622"),
  Description = c("Genome wide annotation for Myxococcus xanthus DK 1622, primarily based on mapping using Gene identifiers","New version of genome wide annotation for Myxococcus xanthus DK 1622, primarily based on mapping using Gene identifiers, that supports new identifiers such as PARENT, START and END"),
  BiocVersion = "3.10",
  Genome = "GCF_000012685.1",
  SourceType = "TSV",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/genome/?term=Myxococcus+xanthus;https://www.ebi.ac.uk/QuickGO/annotations?taxonId=246197&taxonUsage=descendants;https://www.uniprot.org/uniprot/?query=taxonomy:246197;https://www.uniprot.org/uploadlists/",
  SourceVersion = "Oct 02 2019",
  Species = "Myxococcus xanthus DK 1622",
  TaxonomyId = 246197 ,
  Coordinate_1_based = TRUE,
  DataProvider = "NCBI/UniProt",
  Maintainer = "Eduardo Illueca Fernandez <eduardo.illueca@um.es>",
  RDataClass = "character",
  DispatchClass = "SQLiteFile",
  ResourceName = c("org.Mxanthus.db.sqlite","org.Mxanthus.db1.1.sqlite"),
  RDataPath = c("org.Mxanthus.db/org.Mxanthus.db.sqlite", "org.Mxanthus.db/org.Mxanthus.db1.1.sqlite"),
  Tags = c("GO_annotation:Myxococcus xanthus:clusterProfiler")
)

write.csv(meta,"../exdata/metadata.csv", row.names = FALSE)
