library(readr)
swanlake_clean_model_data <- read_csv("Custom Office Templates/swanlake_clean_model data.csv")
View(swanlake_clean_model_data)

head(swanlake_clean_model_data)

colnames(swanlake_clean_model_data)
# ---- Setup ----
# install.packages(c("tidyverse", "psych", "skimr", "janitor", "GGally"))
library(tidyverse)
library(psych)
library(skimr)
library(janitor)
library(GGally)

# ---- 1) Load data ----
df <- read_csv("Custom Office Templates/swanlake_clean_model data.csv")
df <- janitor::clean_names(df)

# ---- 2) Numeric columns only ----
num_df <- df |> select(where(is.numeric))

# ---- 3) Descriptive statistics ----
summary(df)                       # Base R summary
psych::describe(num_df)           # Detailed stats
skimr::skim(df)                   # Compact overview

# Tidy summary with dplyr
tidy_desc <- num_df |>
  summarise(across(everything(),
                   list(mean = ~mean(., na.rm = TRUE),
                        sd = ~sd(., na.rm = TRUE),
                        median = ~median(., na.rm = TRUE),
                        min = ~min(., na.rm = TRUE),
                        max = ~max(., na.rm = TRUE)),
                   .names = "{.col}_{.fn}"))
print(tidy_desc)

# ---- 4) Correlation matrix ----
cor(num_df, use = "pairwise.complete.obs")

# ---- 5) Visualizations (show in RStudio) ----

# Histograms for each numeric variable
for (v in names(num_df)) {
  p <- ggplot(num_df, aes(x = .data[[v]])) +
    geom_histogram(color = "white", fill = "#2c7fb8", bins = 30, na.rm = TRUE) +
    labs(title = paste("Histogram of", v), x = v, y = "Count") +
    theme_classic()
  print(p)  # Show in RStudio Plots pane
}

# Boxplots for all numeric variables
long_num <- num_df |> pivot_longer(cols = everything(), names_to = "variable", values_to = "value")
p_box <- ggplot(long_num, aes(x = variable, y = value)) +
  geom_boxplot(fill = "#41b6c4", outlier.color = "#253494", na.rm = TRUE) +
  coord_flip() +
  labs(title = "", x = "", y = "") +
  theme_classic()
print(p_box)

library(tidyverse)
library(GGally)
library(readr)

# Load your data with original column names preserved
df <- readr::read_csv("Custom Office Templates/swanlake_clean_model data.csv")

# Keep only numeric columns for the matrix
num_df <- df |> dplyr::select(where(is.numeric))

# Choose up to 8 variables (preserve original order)
vars_for_pairs <- names(num_df)[seq_len(min(8, ncol(num_df)))]

# ----- Choose a grouping for color -----
# Option A (preferred): If you already have a categorical grouping column, set it here:
# group_var <- factor(df$Station)           # <- example; change 'Station' to your column
# (Make sure 'Station' exists and is categorical)

# Option B (fallback): Create a simple factor by binning one numeric variable
# Here we bin the first selected variable into quartiles to get ~4 classic colors
ref_var_name <- vars_for_pairs[1]
group_var <- cut(
  num_df[[ref_var_name]],
  breaks = quantile(num_df[[ref_var_name]], probs = seq(0, 1, 0.25), na.rm = TRUE),
  include.lowest = TRUE,
  dig.lab = 6
)

# Build a plotting data.frame that includes only the selected vars + grouping
plot_df <- num_df[, vars_for_pairs]
plot_df$.group <- factor(group_var)

# If you *do* have a real grouping variable, use this instead:
# plot_df$.group <- factor(df$Station)  # example

# ----- Classic-styled, colored ggpairs -----
p_pairs <- GGally::ggpairs(
  plot_df,
  columns = vars_for_pairs,      # which columns to plot
  mapping = aes(color = .group), # color by grouping factor
  upper = list(
    continuous = wrap("points", alpha = 0.7, size = 1.4, stroke = 0)
  ),
  lower = list(
    continuous = wrap("points", alpha = 0.7, size = 1.4, stroke = 0)
  ),
  diag = list(
    continuous = wrap("densityDiag", alpha = 0.5)
  ),
  # Optional: show correlations in upper panels instead of points
  # upper = list(continuous = wrap("cor", size = 3, method = "pearson"))
)

# Apply classic theme and a classic qualitative palette
p_pairs <- p_pairs +
  theme_classic(base_size = 12) +
  theme(
    strip.background = element_blank(),
    panel.grid = element_blank(),
    legend.position = "right"
  ) +
  scale_color_brewer(palette = "Dark2", na.translate = FALSE, name = "Group")

print(p_pairs)






library(tidyverse)
library(readr)

# 1) Load data (keep original column names)
df <- read_csv("Custom Office Templates/swanlake_clean_model data.csv")

# 2) Keep only numeric columns (SampleID will be skipped if it's non-numeric)
num_df <- df |> dplyr::select(where(is.numeric))

# 3) Long format for faceting; preserve original variable order in strips
long_num <- num_df |>
  pivot_longer(cols = everything(), names_to = "variable", values_to = "value") |>
  mutate(variable = factor(variable, levels = colnames(num_df)))  # keep original order

# 4) One-frame histogram grid (printed to RStudio Plots pane)
ggplot(long_num, aes(x = value)) +
  geom_histogram(bins = 30, color = "white", fill = "#2c7fb8", na.rm = TRUE) +
  facet_wrap(~ variable, scales = "free", ncol = 4) +  # adjust ncol as you like
  labs(title = "",
       x = NULL, y = "Count") +
  theme_minimal(base_size = 12) +
  theme(
    strip.text = element_text(face = "bold"),
    panel.grid.minor = element_blank()
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Packages
    # install.packages(c("tidyverse", "Hmisc", "reshape2", "corrplot"))  # run once if needed
    library(tidyverse)
    library(Hmisc)      # for rcorr (correlations + p-values)
    library(reshape2)   # for melting matrices
    library(corrplot)   # for nice correlation heatmaps
    
  
    
    
    
    
    
    
    
    
    corrplot(
      cor_pear[ord_pear, ord_pear],
      method = "ellipse",                      # ellipse look
      type   = "full",
      addCoef.col = "black",                   # show r as numbers
      number.cex = 0.6,
      col = colorRampPalette(c("#b2182b","#ef8a62","#fddbc7","#f7f7f7","#d1e5f0","#67a9cf","#2166ac"))(200),
      tl.col = "black",
      tl.srt = 45,
      diag = FALSE,
      title = "",
      mar = c(0,0,1,0)
    )
    
    corrplot(
      cor_spear[ord_spear, ord_spear],
      method = "ellipse",
      type   = "full",
      addCoef.col = "black",
      number.cex = 0.6,
      col = colorRampPalette(c("#b2182b","#ef8a62","#fddbc7","#f7f7f7","#d1e5f0","#67a9cf","#2166ac"))(200),
      tl.col = "black",
      tl.srt = 45,
      diag = FALSE,
      title = "",
      mar = c(0,0,1,0)
    )
    
    
    
    
    
    
    
    
    
    
    
    # ---- Packages ----
    # install.packages(c("tidyverse", "ggrepel"))  # run once if needed
    library(tidyverse)
    library(readr)
    library(ggrepel)
    
    # ---- 1) Load data (keep original column names) ----
    df <- read_csv("Custom Office Templates/swanlake_clean_model data.csv")
    
    # ---- 2) Select numeric variables (keeps original names) ----
    num_df <- df |> dplyr::select(where(is.numeric))
    
    # OPTIONAL: If `SampleID` is numeric and you want to exclude it from PCA:
    # num_df <- num_df |> select(-`SampleID`)  # backticks handle special chars safely
    
    # Basic safety check
    stopifnot(ncol(num_df) >= 2)
    
    # ---- 3) Handle missing values: median imputation (keeps all rows) ----
    num_df_imp <- num_df |>
      mutate(across(everything(), ~ ifelse(is.na(.), median(., na.rm = TRUE), .)))
    
    # ---- 4) Run PCA (center + scale to unit variance) ----
    pca <- prcomp(num_df_imp, center = TRUE, scale. = TRUE)
    
    # Variance explained
    eig_vals   <- pca$sdev^2
    var_exp    <- eig_vals / sum(eig_vals)
    cum_var    <- cumsum(var_exp)
    var_tbl <- tibble(
      PC = paste0("PC", seq_along(var_exp)),
      eigenvalue = eig_vals,
      var_explained = var_exp,
      cum_explained = cum_var
    )
    
    # ---- 5) Scree plot (variance + cumulative) ----
    ggplot(var_tbl, aes(x = factor(PC, levels = PC))) +
      geom_col(aes(y = var_explained), fill = "#2c7fb8") +
      geom_point(aes(y = cum_explained), color = "#d73027", size = 2) +
      geom_line(aes(y = cum_explained, group = 1), color = "#d73027") +
      scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
      labs(title = "",
           x = NULL, y = "Variance Explained ") +
      theme_classic(base_size = 12)
    
    # ---- 6) Scores (PC coordinates for samples) ----
    scores <- as.data.frame(pca$x)
    scores$..rowid.. <- seq_len(nrow(scores))
    
    # If your data has a SampleID column (any type), attach it for labeling:
    if ("SampleID" %in% names(df)) {
      scores$SampleID <- df$SampleID
    } else {
      scores$SampleID <- scores$..rowid..
    }
    
    # ---- 7) Color strategy for patterns ----
    # Option A (recommended): color by a real grouping if you have one, e.g. Station/Site/etc.
    # scores$Group <- factor(df$Station)  # example if 'Station' exists
    
    # Option B (default): unsupervised k-means (clusters in PC space)
    set.seed(123)
    k <- 3  # change number of clusters if needed
    scores$Group <- factor(kmeans(scores[, c("PC1", "PC2", "PC3")], centers = k)$cluster)
    
    # ---- 8) PC1 vs PC2 score plot (pattern detection) ----
    ggplot(scores, aes(x = PC1, y = PC2, color = Group)) +
      geom_point(size = 2, alpha = 0.85) +
      labs(title = "PCA Score Plot (PC1 vs PC2)", color = "Group") +
      theme_classic(base_size = 12) +
      theme(legend.position = "right")
    
    # ---- 9) Biplot (scores + loadings) ----
    # Loadings (variable contributions)
    loadings <- as.data.frame(pca$rotation[, 1:2])
    loadings$variable <- rownames(loadings)
    
    # Scale loadings to fit nicely on the score plot
    scores12   <- scores[, c("PC1", "PC2")]
    range1     <- range(scores12$PC1); range2 <- range(scores12$PC2)
    L          <- loadings[, c("PC1", "PC2")]
    scale_fac  <- 0.75 * min(diff(range1) / (max(L$PC1) - min(L$PC1)),
                             diff(range2) / (max(L$PC2) - min(L$PC2)))
    L_scaled   <- L * scale_fac
    loadings_scaled <- tibble(variable = loadings$variable,
                              PC1 = L_scaled$PC1, PC2 = L_scaled$PC2)
    
    # Biplot using ggplot (original variable names on arrows)
    ggplot() +
      # scores
      geom_point(data = scores, aes(PC1, PC2, color = Group), size = 2, alpha = 0.85) +
      # arrows from origin
      geom_segment(data = loadings_scaled,
                   aes(x = 0, y = 0, xend = PC1, yend = PC2),
                   arrow = arrow(length = unit(0.02, "npc")), color = "grey20") +
      # labels for variables (repelled)
      ggrepel::geom_text_repel(data = loadings_scaled,
                               aes(x = PC1, y = PC2, label = variable),
                               size = 3.5, color = "black") +
      labs(title = "PCA Biplot (PC1–PC2)",
           x = paste0("PC1 (", scales::percent(var_exp[1], accuracy = 0.1), ")"),
           y = paste0("PC2 (", scales::percent(var_exp[2], accuracy = 0.1), ")"),
           color = "Group") +
      theme_classic(base_size = 12) +
      theme(legend.position = "right")
    
    # ---- 10) Loadings heatmap (which variables define each PC?) ----
    # Choose how many PCs to display
    n_pc <- min(5, ncol(pca$rotation))
    load_tbl <- as.data.frame(pca$rotation[, 1:n_pc])
    load_tbl$variable <- rownames(load_tbl)
    
    load_long <- load_tbl |>
      pivot_longer(cols = -variable, names_to = "PC", values_to = "loading")
    
    ggplot(load_long, aes(x = PC, y = variable, fill = loading)) +
      geom_tile(color = "white") +
      scale_fill_gradient2(low = "#b2182b", mid = "white", high = "#2166ac",
                           midpoint = 0, limits = c(-1, 1)) +
      labs(title = "PCA Loadings Heatmap", x = NULL, y = NULL, fill = "Loading") +
      theme_classic(base_size = 12) +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
    
   
    
    

    
    
    
    # Install packages if missing (uncomment to run)
    # pkgs <- c("readr","dplyr","caret","Metrics","randomForest","xgboost","lightgbm","e1071","ada","nnet","FNN")
    # install.packages(setdiff(pkgs, rownames(installed.packages())))
    
    library(readr)
    library(dplyr)
    library(caret)
    library(Metrics)
    library(randomForest)
    library(xgboost)
    # lightgbm may require special install; load only if installed
    suppressWarnings(suppressMessages( try(library(lightgbm), silent = TRUE) ))
    library(e1071)
    library(ada)
    library(nnet)
    library(FNN)
    
    # Load dataset (adjust path if needed)
    df <- read_csv("Custom Office Templates/swanlake_clean_model data.csv")
    
    # Drop non-numeric ID column if present
    if("SampleID" %in% colnames(df)) df <- df %>% select(-SampleID)
    
    # Targets (metals)
    metals <- c("As", "Cd", "Cu", "Hg", "Ni", "Pb", "Zn")
    missing_targets <- setdiff(metals, colnames(df))
    if(length(missing_targets)>0) stop("Missing target columns: ", paste(missing_targets, collapse = ", "))
    
    # Predictors
    predictors <- df %>% select(-all_of(metals))
    
    # Result container
    results <- data.frame(Metal=character(), Model=character(), R2=numeric(), RMSE=numeric(), MAE=numeric(), stringsAsFactors = FALSE)
    
    set.seed(123)
    for (metal in metals) {
      cat("Processing:", metal, "\n")
      target <- df[[metal]]
      
      # simple 80/20 split
      train_index <- createDataPartition(target, p = 0.8, list = FALSE)
      train_x <- as.data.frame(predictors[train_index, , drop = FALSE])
      test_x  <- as.data.frame(predictors[-train_index, , drop = FALSE])
      train_y <- target[train_index]
      test_y  <- target[-train_index]
      
      # helper to compute metrics (caret::R2 expects pred, obs)
      calc_metrics <- function(pred, obs) {
        r2 <- tryCatch(R2(pred, obs), error = function(e) NA_real_)
        rm <- tryCatch(rmse(obs, pred), error = function(e) NA_real_)
        ma <- tryCatch(mae(obs, pred), error = function(e) NA_real_)
        data.frame(R2 = r2, RMSE = rm, MAE = ma)
      }
      
      # store model predictions in a list (use tryCatch so one failing model doesn't stop the loop)
      preds <- list()
      
      # RANDOM FOREST
      preds$RF <- tryCatch(predict(randomForest(x = train_x, y = train_y), newdata = test_x), error = function(e) rep(NA, nrow(test_x)))
      
      # XGBOOST
      preds$XGB <- tryCatch({
        dtrain <- xgb.DMatrix(data = as.matrix(train_x), label = train_y)
        dtest  <- xgb.DMatrix(data = as.matrix(test_x))
        mdl <- xgboost(data = dtrain, nrounds = 100, objective = "reg:squarederror", verbose = 0)
        predict(mdl, dtest)
      }, error = function(e) rep(NA, nrow(test_x)))
      
      # SVM (SVR)
      preds$SVM <- tryCatch(predict(svm(x = train_x, y = train_y), newdata = test_x), error = function(e) rep(NA, nrow(test_x)))
      
      # KNN regression (FNN::knn.reg)
      preds$KNN <- tryCatch({
        out <- knn.reg(train = as.matrix(train_x), test = as.matrix(test_x), y = train_y, k = 5)
        out$pred
      }, error = function(e) rep(NA, nrow(test_x)))
      
      # ANN (nnet)
      preds$ANN <- tryCatch({
        # scale inputs for ANN
        scaled <- preProcess(train_x, method = c("center","scale"))
        tx <- predict(scaled, train_x)
        vx <- predict(scaled, test_x)
        mdl <- nnet(x = as.matrix(tx), y = train_y, size = 5, linout = TRUE, trace = FALSE, maxit = 1000)
        predict(mdl, as.matrix(vx))
      }, error = function(e) rep(NA, nrow(test_x)))
      
      # AdaBoost
      preds$AdaBoost <- tryCatch({
        # ada prefers formula interface; create data.frame
        trdf <- data.frame(y = train_y, train_x)
        tedf <- test_x
        mdl <- ada(y ~ ., data = trdf)
        predict(mdl, newdata = tedf)
      }, error = function(e) rep(NA, nrow(test_x)))
      
      # LightGBM (if available)
      if("package:lightgbm" %in% search()) {
        preds$LightGBM <- tryCatch({
          dtrain_lgb <- lgb.Dataset(data = as.matrix(train_x), label = train_y)
          mdl <- lgb.train(params = list(objective = "regression", metric = "rmse"), data = dtrain_lgb, nrounds = 100)
          predict(mdl, as.matrix(test_x))
        }, error = function(e) rep(NA, nrow(test_x)))
      } else {
        preds$LightGBM <- rep(NA, nrow(test_x))
      }
      
      # compute metrics and append
      for (mname in names(preds)) {
        mm <- calc_metrics(preds[[mname]], test_y)
        results <- rbind(results, data.frame(Metal = metal, Model = mname, R2 = mm$R2, RMSE = mm$RMSE, MAE = mm$MAE, stringsAsFactors = FALSE))
      }
    }
    
    # show results
    print(results)
    
    # best model per metal by R2
    library(dplyr)
    best <- results %>% group_by(Metal) %>% slice_max(order_by = R2, n = 1, with_ties = FALSE)
    print(best)
    
    
    
    library(flextable)
    library(officer)
    
    ft <- regulartable(results)
    ft <- autofit(ft)
    
    doc <- read_docx()
    doc <- body_add_flextable(doc, ft)
    
    print(doc, target = "model_results_APA.docx")
    
    
    
    
    
    
    
    library(ggplot2)
    library(dplyr)
    library(caret)
    library(randomForest)
    library(xgboost)
    library(e1071)
    library(ada)
    library(nnet)
    library(FNN)
    
    # Ensure LightGBM is only used if installed
    lgb_installed <- requireNamespace("lightgbm", quietly = TRUE)
    if(lgb_installed) library(lightgbm)
    
    # Assuming df is already loaded and cleaned, metals & predictors defined
    results <- data.frame(Metal=character(), Model=character(), R2=numeric(), RMSE=numeric(), MAE=numeric(), stringsAsFactors = FALSE)
    pred_all <- list()  # store all predictions for plotting
    
    set.seed(123)
    for (metal in metals) {
      cat("Processing:", metal, "\n")
      target <- df[[metal]]
      
      train_index <- createDataPartition(target, p = 0.8, list = FALSE)
      train_x <- as.data.frame(predictors[train_index, , drop = FALSE])
      test_x  <- as.data.frame(predictors[-train_index, , drop = FALSE])
      train_y <- target[train_index]
      test_y  <- target[-train_index]
      
      calc_metrics <- function(pred, obs) {
        r2 <- tryCatch(R2(pred, obs), error = function(e) NA_real_)
        rm <- tryCatch(rmse(obs, pred), error = function(e) NA_real_)
        ma <- tryCatch(mae(obs, pred), error = function(e) NA_real_)
        data.frame(R2 = r2, RMSE = rm, MAE = ma)
      }
      
      preds <- list()
      
      # RANDOM FOREST
      preds$RF <- tryCatch(predict(randomForest(x = train_x, y = train_y), newdata = test_x), error = function(e) rep(NA, nrow(test_x)))
      
      # XGBOOST
      preds$XGB <- tryCatch({
        dtrain <- xgb.DMatrix(data = as.matrix(train_x), label = train_y)
        dtest  <- xgb.DMatrix(data = as.matrix(test_x))
        mdl <- xgboost(data = dtrain, nrounds = 100, objective = "reg:squarederror", verbose = 0)
        predict(mdl, dtest)
      }, error = function(e) rep(NA, nrow(test_x)))
      
      # SVM
      preds$SVM <- tryCatch(predict(svm(x = train_x, y = train_y), newdata = test_x), error = function(e) rep(NA, nrow(test_x)))
      
      # KNN
      preds$KNN <- tryCatch({
        out <- knn.reg(train = as.matrix(train_x), test = as.matrix(test_x), y = train_y, k = 5)
        out$pred
      }, error = function(e) rep(NA, nrow(test_x)))
      
      # ANN
      preds$ANN <- tryCatch({
        scaled <- preProcess(train_x, method = c("center","scale"))
        tx <- predict(scaled, train_x)
        vx <- predict(scaled, test_x)
        mdl <- nnet(x = as.matrix(tx), y = train_y, size = 5, linout = TRUE, trace = FALSE, maxit = 1000)
        predict(mdl, as.matrix(vx))
      }, error = function(e) rep(NA, nrow(test_x)))
      
      # AdaBoost
      preds$AdaBoost <- tryCatch({
        trdf <- data.frame(y = train_y, train_x)
        tedf <- test_x
        mdl <- ada(y ~ ., data = trdf)
        predict(mdl, newdata = tedf)
      }, error = function(e) rep(NA, nrow(test_x)))
      
      # LightGBM
      if(lgb_installed) {
        preds$LightGBM <- tryCatch({
          dtrain_lgb <- lgb.Dataset(data = as.matrix(train_x), label = train_y)
          mdl <- lgb.train(params = list(objective = "regression", metric = "rmse"), data = dtrain_lgb, nrounds = 100)
          predict(mdl, as.matrix(test_x))
        }, error = function(e) rep(NA, nrow(test_x)))
      } else {
        preds$LightGBM <- rep(NA, nrow(test_x))
      }
      
      # Compute metrics & store results
      for (mname in names(preds)) {
        mm <- calc_metrics(preds[[mname]], test_y)
        results <- rbind(results, data.frame(Metal = metal, Model = mname, R2 = mm$R2, RMSE = mm$RMSE, MAE = mm$MAE, stringsAsFactors = FALSE))
        
        # Store predictions for plotting
        pred_all[[paste(metal, mname, sep = "_")]] <- data.frame(Metal = metal, Model = mname,
                                                                 Actual = test_y, Predicted = preds[[mname]])
      }
    }
    
    # Combine all prediction data
    pred_df <- bind_rows(pred_all)
    
    # Plot: Predicted vs Actual for each Metal & Model
    library(ggplot2)
    
    ggplot(pred_df, aes(x = Actual, y = Predicted, color = Model)) +
      geom_point(alpha = 0.6) +
      geom_abline(slope = 1, intercept = 0, linetype = "dashed", color = "black") +
      facet_wrap(~Metal, scales = "free") +
      theme_minimal() +
      labs(title = "Predicted vs Actual Values", x = "Actual", y = "Predicted") +
      theme(legend.position = "bottom")
    
 
    
    
    
    library(ggplot2)
    library(dplyr)
    library(tidyr)
    
    # Melt results for easier plotting
    results_long <- results %>%
      pivot_longer(cols = c(R2, RMSE, MAE), names_to = "Metric", values_to = "Value")
    
    # Example: R2 bar plot (can do the same for RMSE and MAE)
    ggplot(results_long %>% filter(Metric == "R2"), 
           aes(x = Model, y = Value, fill = Model)) +
      geom_bar(stat = "identity", position = "dodge") +
      facet_wrap(~Metal, scales = "free_y") +
      theme_minimal() +
      labs(title = "Model R² per Metal", y = "R²", x = "Model") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1), legend.position = "none")
    
    
    

    # For line plots, connect models for each metal
    ggplot(df, aes(x = Model, y = Value, group = Metal, color = Metal)) +
      geom_line(size = 1.2) +
      geom_point(size = 4) +
      geom_text(aes(label = round(Value,2)), vjust = -0.5, fontface = "bold") +
      theme_minimal(base_size = 14) +
      labs(title = "R² per Model and Metal", x = "Model", y = "R²") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1),
            legend.position = "bottom")
    
    
    
    
    
    
    
    
    
    library(ggplot2)
    library(dplyr)
    library(tidyr)
    library(RColorBrewer)
    
    # Convert results to long format
    results_long <- results %>%
      pivot_longer(cols = c(R2, RMSE, MAE), names_to = "Metric", values_to = "Value")
    
    # Example: plot R2
    df <- results_long %>% filter(Metric == "R2")
    
    ggplot(df, aes(x = reorder(Model, Value), y = Value, fill = Model)) +
      geom_col(width = 0.7, show.legend = FALSE) +
      # Place value labels at the top of bars, inside if possible
      geom_text(aes(label = round(Value, 2)),
                position = position_stack(vjust = 0.5),  # centers text inside bar
                size = 4, fontface = "bold", color = "white") +
      coord_flip() +  # horizontal bars
      facet_wrap(~Metal, scales = "free_x") +
      scale_fill_brewer(palette = "Set2") +
      theme_minimal(base_size = 14) +
      labs(title = "", x = "Model", y = "R²") +
      theme(axis.text.x = element_text(face = "bold"),
            axis.text.y = element_text(face = "bold"))

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Load packages
    library(readr)
    library(dplyr)
    library(caret)
    library(randomForest)
    
    # Load data
    df <- read_csv("Custom Office Templates/swanlake_clean_model data.csv")
    
    # Check column names
    colnames(df)
    
    # -----------------------------
    # FUNCTION: Rank predictors
    # -----------------------------
    rank_predictors <- function(data, target_var) {
      
      # Remove rows with NA
      data <- na.omit(data)
      
      # Split into predictors and target
      y <- data[[target_var]]
      x <- data %>% select(-SampleID, -all_of(target_var))
      
      # Train Random Forest
      rf_model <- randomForest(x, y, importance = TRUE)
      
      # Extract importance
      importance_df <- as.data.frame(importance(rf_model))
      
      # Order by %IncMSE
      importance_df <- importance_df %>%
        arrange(desc(`%IncMSE`)) %>%
        mutate(Predictor = row.names(importance_df)) %>%
        select(Predictor, everything())
      
      return(importance_df)
    }
    
    # ---------------------------------
    # ⭐ Example: Rank predictors for As
    # ---------------------------------
    importance_As <- rank_predictors(df, "As")
    importance_As
    
   
    
    
    importance_As$Predictor
    
    
    
    
    targets <- c("As","Cd","Cu","Hg","Ni","Pb","Zn")
    
    all_importance <- lapply(targets, function(t) {
      out <- rank_predictors(df, t)
      out$Target <- t
      return(out)
    })
    
    all_importance
   
    
    
    library(flextable)
    library(officer)
    library(dplyr)
    
    # Create an APA-style flextable
    apa_tbl <- importance_As %>%
      flextable() %>%
      autofit() %>%
      theme_booktabs() %>%
      bold(part = "header") %>%
      fontsize(size = 11) %>%
      align(align = "center", part = "all")
    
    # Save as Word file
    doc <- read_docx()
    doc <- body_add_flextable(doc, apa_tbl)
    print(doc, target = "APA_predictor_importance_As.docx")
  
    
    
    
    
    library(ggplot2)
    library(dplyr)
    library(forcats)
    
    # Assuming importance_df is already created as in previous step
    importance_df <- importance_df %>% filter(!is.na(IncMSE))
    
    # Function to create a single plot per target
    plot_target_importance <- function(df, target_name) {
      df_target <- df %>% filter(Target == target_name)
      
      # Reorder predictors by importance
      df_target <- df_target %>%
        mutate(Predictor = fct_reorder(Predictor, IncMSE))
      
      p <- ggplot(df_target, aes(x = Predictor, y = IncMSE, fill = IncMSE)) +
        geom_col(show.legend = FALSE) +
        coord_flip() +
        labs(
          title = paste("Variable Importance for", target_name),
          x = "Predictor",
          y = "% Increase in MSE (%IncMSE)"
        ) +
        theme_minimal(base_size = 14) +
        scale_fill_gradient(low = "skyblue", high = "darkblue") +
        theme(
          axis.text.y = element_text(face = "bold"),
          plot.title = element_text(face = "bold", size = 16, hjust = 0.5)
        )
      
      return(p)
    }
    
    # Example: Plot each target individually
    targets <- unique(importance_df$Target)
    
    # Store all plots in a list
    plot_list <- lapply(targets, function(t) plot_target_importance(importance_df, t))
    
    # Print each plot (you can also save them individually)
    for(p in plot_list){
      print(p)
    }
    
    

    