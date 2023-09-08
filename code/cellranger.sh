#!/usr/bin/env bash

cd /results

cellranger count --id my_run --fastqs /data/L8TX_171026_01_A05 --sample L8TX_171026_01_A05 --transcriptome /data/cellranger_mouse_reference/refdata-gex-mm10-2020-A
