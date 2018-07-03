#' csafe scale fill
#'
#' @export scale_fill_csafe
#' @export scale_fill_malisha
#' @author Sam Tyner
#' @examples
#' scale_fill_csafe(theme="primary")


scale_fill_csafe <- function(theme="primary", csafe_key = list(
  primary = c("#40B4E5", "#003A70", "#77BC1F", "#CF0A2C", "#8A8A8D"),
  secondary = c("#9F1B96", "#EA1D76", "#AC162C", "#00833E", "#E11383", "#E4E833",
                "#F5BD47", "#555759", "#2E5597", "#6BA2B9", "#FA8D29", "#005487")
)) {

  scale_fill_manual(values=csafe_key[[theme]])

}

#' malisha scale fill

#' scale_fill_malisha()

scale_fill_malisha <- function(...) {

  scale_fill_manual(values=c("Hotpink", "yellow", "blue",
                            "purple", "green"), ...)

}
