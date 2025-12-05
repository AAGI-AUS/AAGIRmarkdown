#' Create a new AAGI Report using a template
#'
#' @param filename The filename for the new report.
#' @importFrom rmarkdown draft
#' @importFrom utils file.edit
#'
#' @returns The path to the created Rmd file (invisibly).
#' @export
#'
#' @examples
#' \dontrun{
#' new_report("test_report")
#' }
#' @md
new_report <- function(filename) {
  rmarkdown::draft(
    file = filename,
    template = "AAGI_Report",
    package = "AAGIRmarkdown",
    create_dir = TRUE,
    edit = FALSE
  )
  filename <- file.path(filename, paste0(filename, ".Rmd"))
  file.edit(filename)
  invisible(filename)
}
