data_header <- function(store, department) {
	glue::glue("Showing data from store {store} and department {department}")
}

subset_data <- function(data, cols) {
  if (length(cols) == 0) {
    return(data)
  }
  valid_cols <- intersect(cols, colnames(data))
  data[, valid_cols, drop = FALSE]
}

read_data <- function(store) {
  read.csv(paste0("walmart_", store, ".csv"))
}
