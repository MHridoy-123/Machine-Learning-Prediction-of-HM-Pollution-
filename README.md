# Machine Learning Prediction of HM Pollution

Code to reproduce analyses for the iScience manuscript:
Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring.

This pipeline predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) using pH, dissolved oxygen, temperature, median grain size (φ), and Al%, and derives ecological indices (Igeo, PLI, Hakanson RI).

## Data
Public dataset (Mendeley Data):
https://data.10.17632/n8bpprwkj5.2

## Code
Repository:
https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-


## Requirements
Python (primary): 3.12  
Key packages: pandas, numpy, matplotlib, seaborn, scikit-learn, xgboost, lightgbm, shap  
R (optional, selected plots): ggplot2, corrplot

If running locally:
pip install -r requirements.txt

## How to run
- If using Google Colab: open the notebook(s) in `notebooks/` and run all cells.
- If using scripts: run the main script(s) under `src/` (see comments in the script header).

Outputs (figures/tables/metrics) are written to `figures/` and/or `results/` (depending on the workflow).

## Contact
Lead contact: Chiara Bordin (chiara.bordin@uit.no)
``
