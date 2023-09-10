#!/usr/bin/env bash

cd /results

cellranger count --id=incf_run \
--fastqs=/data/u19_zeng_fastq \
--sample=NW_TX0005-23 \
--transcriptome=/data/cellranger_mouse_reference/refdata-gex-mm10-2020-A
