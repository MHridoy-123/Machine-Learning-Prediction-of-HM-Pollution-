# Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  # Machine Learning Prediction of HM Pollution

This repository contains code to reproduce the analyses reported in the iScience manuscript:
“Machine Learning Prediction of HM Pollution for Aquatic Health Monitoring”.

The workflow predicts sediment heavy metal concentrations (As, Cd, Cu, Hg, Ni, Pb, Zn) from field-friendly variables (pH, dissolved oxygen, temperature), sediment texture (median grain size, φ), and Al%, and integrates model outputs with ecological risk indices (e.g., Igeo, PLI, Hakanson RI). The repository also includes scripts/notebooks for preprocessing, model training/evaluation, explainability analyses, and figure generation.

---

## Data availability

**Primary dataset (public):**
- Mendeley Data: Physicochemical, particle size, and elemental data of seawater from Swan Lake (September 2020)  
  https://data.10.17632/n8bpprwkj5.2

No new experimental data were generated in this repository. Any derived intermediate files produced by the pipeline (e.g., cleaned tables, model predictions) can be recreated by running the scripts below.

---

## Code availability

All code for preprocessing, model training, evaluation, and figure generation is provided in this repository:
- https://github.com/MHridoy-123/Machine-Learning-Prediction-of-HM-Pollution-

**Recommended (for iScience final checks):** archive a tagged release of this repository in Zenodo to obtain a DOI.
- Zenodo DOI (release archive): [TBD]
- Version/tag used for the paper: [TBD, e.g., v1.0.0]

---

## Requirements

Analyses were performed primarily in Google Colab using Python and additional plotting/statistics in R.

### Python environment (recommended)
- Python 3.12
- pandas 2.2
- numpy 1.26
- matplotlib 3.8
- seaborn 0.13
- scikit-learn 1.4
- xgboost 2.0
- lightgbm 4.3
- shap 0.45

### R environment (optional; for selected plots)
- R 4.5.2
- ggplot2 3.5
- corrplot 0.92

A minimal dependency specification is provided in:
- `requirements.txt` (Python)  
and/or
- `environment.yml` (conda, optional)

---

## Repository structure

- `data/`  
  Optional local data folder. Raw data are downloaded from Mendeley Data and should not be committed unless licensing permits.
- `notebooks/`  
  Jupyter notebooks for exploratory analysis and model runs (if used).
- `src/`  
  Core scripts for preprocessing, modeling, risk-index computation, and explainability.
- `figures/`  
  Generated figures (output).
- `results/`  
  Model predictions, metrics tables, risk-index outputs (output).
- `supplement/`  
  Supplementary tables (e.g., confusion matrices, stability results) when exported from code.
- `README.md`  
  This file.

---

## How to reproduce the analysis

### Option A: Google Colab (fastest)
1. Open the Colab notebook(s) in `notebooks/` (if provided).
2. Run cells top-to-bottom. The notebook will:
   - download data from Mendeley Data
   - preprocess predictors/targets (imputation, scaling, VIF screening)
   - train and evaluate models (cross-validation)
   - compute ecological indices (Igeo, PLI, RI)
   - generate figures and tables

### Option B: Local Python run
1. Create and activate an environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
  
