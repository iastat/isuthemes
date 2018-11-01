#' isu scale fill
#'
#' @export scale_fill_isu
#' @author Sam Tyner
#' @examples
#' scale_fill_isu(theme="primary")


scale_fill_isu <- function(theme="primary", isu_key = list(
  primary = c("#C8102E", "#F1BE48", "#524727", "#9B945F", "#CAC7A7"),
  secondary = c("#3E4827", "#76881D", "#A2A569", 
                "#003D4C", "#006BA6", "#7A99AC",
                "#7C2529",  "#9A3324", "#BE531C", 
                "#8B5B29", "#B9975B", "#EED484",
                "#6E6259", "#707372", "#ACA39A")
  
)) {

  scale_fill_manual(values=isu_key[[theme]])

}
