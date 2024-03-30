library(tidyverse)  # data manipulation
library(cluster)    # clustering algorithms
library(factoextra) # clustering algorithms & visualization
library(gridExtra)
library(readxl)


df1 <- USArrests
df1 <- na.omit(df1) # Nan Values Cleaning
df1 <- scale(df1)
head(df1)
View(df1)

df <- read_excel("D:/spotify2.xlsx")
#df$titre <- substr(df$titre, 0, 25)
df_full <- df
df <- df[,-c(1,2,6,8,16)]
df3 <- df
genredf <- df
genredf[,1] <- NULL
df3[,1] <- NULL
rownames(genredf) = make.names(df$genre, unique = TRUE)
rownames(df3) = make.names(df_full$titre, unique = TRUE)



#genredf <- na.omit(genredf) # Nan Values Cleaning
genredf <- scale(genredf)
head(genredf)
view(genredf)


View(df3)

View(df_full)

#----------------- CAH Algorithm ----------------------- 

distance_entre_ligne_euclidienne<-function (x, method = "euclidean", diag = FALSE, upper = FALSE, 
          p = 2) 
{
  if (!is.na(pmatch(method, "euclidian"))) 
    method <- "euclidean"
  METHODS <- c("euclidean", "maximum", "manhattan", "canberra", 
               "binary", "minkowski")
  method <- pmatch(method, METHODS)
  if (is.na(method)) 
    stop("invalid distance method")
  if (method == -1) 
    stop("ambiguous distance method")
  x <- as.matrix(x)
  N <- nrow(x)
  attrs <- if (method == 6L) 
    list(Size = N, Labels = dimnames(x)[[1L]], Diag = diag, 
         Upper = upper, method = METHODS[method], p = p, 
         call = match.call(), class = "dist")
  else list(Size = N, Labels = dimnames(x)[[1L]], Diag = diag, 
            Upper = upper, method = METHODS[method], call = match.call(), 
            class = "dist")
  .Call(stats:::C_Cdist, x, method, attrs, p)
}

cah_algo<-function (d, method = "complete", members = NULL) 
{
  METHODS <- c("ward.D", "single", "complete", "average", 
               "mcquitty", "median", "centroid", "ward.D2")
  if (method == "ward") {
    message("The \"ward\" method has been renamed to \"ward.D\"; note new \"ward.D2\"")
    method <- "ward.D"
  }
  i.meth <- pmatch(method, METHODS)
  if (is.na(i.meth)) 
    stop("invalid clustering method", paste("", method))
  if (i.meth == -1) 
    stop("ambiguous clustering method", paste("", method))
  n <- as.integer(attr(d, "Size"))
  if (is.null(n)) 
    stop("invalid dissimilarities")
  if (is.na(n) || n > 65536L) 
    stop("size cannot be NA nor exceed 65536")
  if (n < 2) 
    stop("must have n >= 2 objects to cluster")
  len <- as.integer(n * (n - 1)/2)
  if (length(d) != len) 
    (if (length(d) < len) 
      stop
     else warning)("dissimilarities of improper length")
  if (is.null(members)) 
    members <- rep(1, n)
  else if (length(members) != n) 
    stop("invalid length of members")
  storage.mode(d) <- "double"
  hcl <- .Fortran(stats:::C_hclust, n = n, len = len, method = as.integer(i.meth), 
                  ia = integer(n), ib = integer(n), crit = double(n), 
                  members = as.double(members), nn = integer(n), disnn = double(n), 
                  diss = d)
  hcass <- .Fortran(stats:::C_hcass2, n = n, ia = hcl$ia, ib = hcl$ib, 
                    order = integer(n), iia = integer(n), iib = integer(n))
  structure(list(merge = cbind(hcass$iia[1L:(n - 1)], hcass$iib[1L:(n - 
                                                                      1)]), height = hcl$crit[1L:(n - 1)], order = hcass$order, 
                 labels = attr(d, "Labels"), method = METHODS[i.meth], 
                 call = match.call(), dist.method = attr(d, "method")), 
            class = "hclust")
}


set.seed(240)
d <- distance_entre_ligne_euclidienne(genredf, method = "euclidean")
d
View(d)

hc1 <- cah_algo(d, method = "complete" )


# Plot the obtained dendrogram
plot(hc1, cex = 0.6, hang = -1, labels = FALSE)
