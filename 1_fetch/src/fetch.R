#' @param out_filepath string file path under which to save data locally (in out dir)

download_data <- function(out_filepath) {
  # Create out data directory
  project_output_dir =  dirname(out_filepath)
  dir.create(project_output_dir, showWarnings = FALSE)
  # Get the data from ScienceBase
  item_file_download('5d925066e4b0c4f70d0d0599', names = 'me_RMSE.csv', destinations = out_filepath, overwrite_file = TRUE)
  return(out_filepath)
  }