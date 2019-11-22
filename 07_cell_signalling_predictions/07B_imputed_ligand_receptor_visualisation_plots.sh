# STROMAL SUBCLASSES MANUSCRIPT
# author: Sunny Z. Wu
# dated: 20191115
#
# SCRIPT 07B  LIGAND RECEPTOR VISUALISATION OF IMPUTED GENE EXPRESSION PLOTS JOB SUBMISSION TO HPC SCRIPT
#
# GLOBS
source activate Renv
  ## R path
  R="/share/ClusterShare/software/contrib/CTP_single_cell/tools/R-3.5.0/bin/R"
  ## script path
  TEMPPWD=$(pwd)
  SCRIPT="${TEMPPWD}/05B_AUCell_HPC.R"
  ## seurat objects path
  SEURATOBJECTPATH="/share/ScratchGeneral/sunwu/projects/Stromal_heterogeneity_paper/REPROCESSING_FROM_RAW/04_seurat_annotation/output/Output/Rdata/Rdata_complete_dataset.Rdata"
  # job name
  JOBNAME="MAGIC_L_R_PLOTS"

# DIRECTORIES
mkdir "output"
#
# SUBMIT JOB TO CLUSTER
    cd "output"
    qsub \
    -cwd \
    -pe smp 16 \
    -l mem_requested=10G \
    -P TumourProgression \
    -b y \
    -j y \
    -V \
    -N ${JOBNAME}\
    "${R} CMD BATCH \
    --no-save '--args \
    ${SEURATOBJECTPATH}' \
    ${SCRIPT}"

cd ${TEMPPWD}
