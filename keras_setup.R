# To install on your Neried or own laptop need to get the very latest versions of the
# software which requires the 'remotes' package. You might also need to have
# RTools installed from https://cran.r-project.org/bin/windows/Rtools/rtools40.html

install.packages("remotes")
remotes::install_github(paste0("rstudio/", c("reticulate", "tensorflow")))
install.packages("keras")
reticulate::install_miniconda()

# Check the configuration looks OK; output should include Python version
reticulate::py_config()

# Restart R session
.rs.restartR()

# Install all the extras for keras.
# keras::install_keras(tensorflow = "gpu") # If you have a compatible Nvidia GPU
keras::install_keras()

# To check that installation is successful
library(keras)
mydata <- dataset_mnist() # Ignore a warning about cudart
