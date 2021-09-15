#' @param sb_id character ID corresponding to ScienceBase item
#' @param src_filename string file name attached to SB item that you wish to download
#' @param out_filepath string file path under which to save data locally (in out dir)

download_data <- function(sb_id, src_filename, out_filepath) {
  # Create out data directory
  project_output_dir =  dirname(out_filepath)
  dir.create(project_output_dir, showWarnings = FALSE)
  # Get the data from ScienceBase
  item_file_download(sb_id, names = src_filename, destinations = out_filepath, overwrite_file = TRUE)
  return(out_filepath)
  }