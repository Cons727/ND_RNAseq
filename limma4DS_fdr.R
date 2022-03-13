limma4DS_fdr <- function(matrix_e, classes_e, classes_names=NA){
  ans_matrix <- t(apply(matrix_e, 1, function(x) c(mean(x[which(classes_e == 1)], na.rm=T), mean(x[which(classes_e == 0)], na.rm=T))))
  f <- factor(classes_e)
  design <- model.matrix(~0+f)
  colnames(design) <- c("Resistant", "Sensitive")	
  fit <- lmFit(matrix_e, design)
  contrast.matrix <- makeContrasts(Sensitive=Sensitive-Resistant, levels=design)
  fit2 <- contrasts.fit(fit, contrast.matrix)
  fit2 <- eBayes(fit2)
  limma_mat <- toptable(fit2, number=nrow(matrix_e))
  ans_matrix <- ans_matrix[match(rownames(limma_mat), rownames(ans_matrix)),]
  ans_matrix <- cbind(ans_matrix, limma_mat[,c(1,3,4)])
  colnames(ans_matrix) <- c("Sensitive","Resistant", "logFC", "p.value", "q.value")
  if(!any(is.na(classes_names)))
    colnames(ans_matrix)[c(1,2)] <- classes_names
  ans_matrix
}
