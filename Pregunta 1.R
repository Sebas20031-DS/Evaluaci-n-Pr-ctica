# Datos para hombres
y1 <- c(15,17,15,13,20,15,15,13,14,17,17,17,15,18,18,15,18,10,18,18,13,16,11,16,16,18,16,15,18,18,17,19)
y2 <- c(17,15,14,12,17,21,13,5 ,7 ,15,17,20,15,19,18,14,17,14,21,21,17,16,15,13,13,18,15,16,19,16,20,19)
y3 <- c(24,32,29,10,26,26,26,22,30,30,26,28,29,32,31,26,33,19,30,34,30,16,25,26,23,34,28,29,32,33,21,30)
y4 <- c(14,26,23,16,28,21,22,22,17,27,20,24,24,28,27,21,26,17,29,26,24,16,23,16,21,24,27,24,23,7 ,21,28)

data_hombres <- matrix(c(y1, y2, y3, y4), ncol=4)

colnames(data_hombres) <- c("y1", "y2", "y3", "y4")

# Datos para mujeres
y1 <- c(13,14,12,12,11,12,10,10,12,11,12,14,14,13,14,13,16,14,16,13,2 ,14,17,16,15,12,14,13,11,7 ,12,6 )
y2 <- c(14,12,19,13,20,9 ,13,8 ,20,10,18,18,10,16,8 ,16,21,17,16,16,6 ,16,17,13,14,10,17,15,16,7 ,15,5 )
y3 <- c(12,14,21,10,16,14,18,13,19,11,25,13,25,8 ,13,23,26,14,15,23,16,22,22,16,20,12,24,18,18,19,7 ,6 )
y4 <- c(21,26,21,16,16,18,24,23,23,27,25,26,28,14,25,28,26,14,23,24,21,26,28,14,26,9 ,23,20,28,18,28,13)

data_mujeres <- matrix(c(y1, y2, y3, y4), ncol=4)

colnames(data_mujeres) <- c("y1", "y2", "y3", "y4")


# PCA Hombres -------------------------------------------------------------

# partimos por ver correlación
R <- cor(data_hombres)
corrplot::corrplot(R, typ = "lower")

S <- cov(data_hombres)

desc1 <- svd(S)
desc2 <- eigen(S)

# Realizar el análisis de componentes principales

pca_h <- FactoMineR::PCA(data_hombres, scale.unit = TRUE, graph = TRUE)

# Escogemos cuantas componentes principales

pca_h$eig

factoextra::fviz_screeplot(pca_h, addlabels = TRUE)

paran::paran(data_hombres, iterations = 5000, graph = T)

pca_h$var$cor

# contribución de cada variable a cada componente

factoextra::fviz_contrib(pca_h, choice = "var", axes = 1)

# visualizaciones

factoextra::fviz_pca_var(pca_h, repel = TRUE)
factoextra::fviz_pca_ind(pca_h, labelsize = 3, repel = TRUE)
factoextra::fviz_pca_biplot(pca_h, labelsize = 3, repel = TRUE)


# PCA Mujeres -------------------------------------------------------------

# partimos por ver correlación
R <- cor(data_mujeres)
corrplot::corrplot(R, typ = "lower")

S <- cov(data_mujeres)

desc1 <- svd(S)
desc2 <- eigen(S)

# Realizar el análisis de componentes principales

pca_m <- FactoMineR::PCA(data_mujeres, scale.unit = TRUE, graph = TRUE)

# Escogemos cuantas componentes principales

pca_m$eig

factoextra::fviz_screeplot(pca_m, addlabels = TRUE)

paran::paran(data_mujeres, iterations = 5000, graph = T)

pca_m$var$cor

# contribución de cada variable a cada componente

factoextra::fviz_contrib(pca_m, choice = "var", axes = 1)

# visualizaciones

factoextra::fviz_pca_var(pca_m, repel = TRUE)
factoextra::fviz_pca_ind(pca_m, labelsize = 3, repel = TRUE)
factoextra::fviz_pca_biplot(pca_m, labelsize = 3, repel = TRUE)





