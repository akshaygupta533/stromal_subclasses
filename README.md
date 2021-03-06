# stromal_subclasses
code for data processing and visualisation associated with the Wu et al. manuscript "Single-cell analysis reveals diverse stromal subsets associated with immune evasion in triple-negative breast cancer"

### 01 cellranger count processing
job submission script for single-cell RNA-Seq processing using cellranger v2.1.1. 

### 02 seurat v2 processing of individual datasets
job submission script and R script for processing individual seurat objects

### 03 seurat v2 data integration
job submission script and R script for integrating seurat objects

### 04 cluster annotation and reclustering 
job submission script and R script for cluster annotations and reclustering of epithelial cells, stromal-immune cells and individual stromal subpopulations (CAFs and VDSCs). This R script also includes the generation of stromal gene signatures and export of gene expression matrices for downstream SCENIC (step 06).

### 05 gene signature analysis
#### AUCell
job submission script and R scripts for scoring of stromal-immune cells with cell type signatures (XCell database), T-cell exhaustion signatures (Blackburn et al. 2008) and the pancreatic ductal adenocarcinoma CAF signatures (David Tuveson's lab) using the AUCell method

#### clusterProfiler
job submission script and R scripts for gene ontology enrichment of the gene signatures for each stromal subcluster. Top 250 DEGs are used. 

### 06 pySCENIC transcription factor enrichment of reclustered CAFs and VDSCs
job submission script and R scripts for exporting, filtering gene expression matrices, and running pySCENIC (python based command line version) with the CAFs and VDSC raw count expression matrix as input. This also includes R script for filtering top TF candidates for clustering and visualisation

### 07 stromal cell signalling predictions
R script visualisation scripts for filtering stromal cell-cell signalling predictions. For processing ligand-receptor analysis, please visit (enter git link for Ruis github link)

### Other analytical tools used
#### Immune evasion using TIDE
For computing T-cell dysfunction and exclusion analysis, please see the tumour immune dysfunction and exclusion (TIDE) method

- paper: https://www.nature.com/articles/s41591-018-0136-1
- link to online tool: http://tide.dfci.harvard.edu/

### Data availability
The scRNA-Seq data from this study has been deposited in the European Nucleotide Archive (ENA) under the accession code PRJEB35405. This depository includes the demultiplexed paired ended reads (R1 and R2), Illumina indices and bam files processed using the Cellranger software. These paired ended reads (R1 and R2) and Illumina indices can be used for input for data reprocessing from the '01 cellranger count processing' step. 

### Contact
Please email s.wu@garvan.org.au for any additional questions about the analytical methods used in this paper. All other relevant data are available from the authors upon request.
