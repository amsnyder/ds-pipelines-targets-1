library(sbtools)


#' @param sb_id character ID corresponding to ScienceBase item
#' @param src_filename string file name attached to SB item that you wish to download
#' @param local_filename string file name under which to save data locally (in out dir)

download_sbdata <- function(sb_id, src_filename, local_filename) {
  # Create out data directory
  project_output_dir =  file.path('1_fetch', 'out')
  dir.create(project_output_dir, showWarnings = FALSE)
  # Get the data from ScienceBase
  out_file <- file.path(project_output_dir, local_filename)
  item_file_download(sb_id, names = src_filename, destinations = out_file, overwrite_file = TRUE)
}

download_sbdata(sb_id = '5d925066e4b0c4f70d0d0599', src_filename = 'me_RMSE.csv', local_filename = 'model_RMSEs.csv')