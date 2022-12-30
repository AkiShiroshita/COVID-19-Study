
# Google drive ------------------------------------------------------------

library(googledrive)
drive_find(n_max=30)
drive_find(type = "csv")

# Download files
drive_download("file",
               type = "csv",
               overwrite = TRUE)
my_data <- read_fwf("file.data.gz", ...)
# Be sure to remove the downloaded file after loading it into R
file.remove("file.dat.gz")

# Upload files
file <- drive_upload(
  drive_example("file.csv"),
  "test_file.csv"
)