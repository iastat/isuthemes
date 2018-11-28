#' isu theme
#'
#' @export
#' @name theme_isu
#' @author Sam Tyner
#' @title ISU themes for ggplot2
#' @examples
#' ggplot(data = mtcars) +
#'     geom_point(aes(x = drat, y = qsec)) + 
#'     theme_isu(theme="primary")

theme_isu <- function(theme="primary", isu_key = list(
  primary = list(
     family_title="Univers",
     family_text = "Univers-Light-Normal",
     colour_title = "#524727",
     colour_text = "#9B945F"),
  secondary = list(
    family_title="Univers",
    family_text = "Univers-Light-Normal",
    colour_title = "#7C2529",
    colour_text = "#6E6259"
  )
)) {

  theme_bw() +
    theme(text=element_text(size=14, family=isu_key[[theme]]$family_text)) +
    theme(plot.title = element_text(size = 16, colour = isu_key[[theme]]$colour_title, family=isu_key[[theme]]$family_title)) +
    theme(plot.subtitle = element_text(size = 12, colour = isu_key[[theme]]$colour_title, family=isu_key[[theme]]$family_title)) +
    theme(axis.text.x=element_text(color=isu_key[[theme]]$colour_text)) +
    theme(axis.text.y=element_text(color=isu_key[[theme]]$colour_text)) +
    theme(axis.title.x=element_text(color=isu_key[[theme]]$colour_text, vjust=0)) +
    theme(axis.title.y=element_text(color=isu_key[[theme]]$colour_text, vjust=1.25)) +
    theme(plot.background = element_blank(),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank())+
    theme(panel.border= element_blank())+
    theme(axis.line.x = element_line(color=isu_key[[theme]]$colour_text, size = 0.5),
          axis.line.y = element_line(color=isu_key[[theme]]$colour_text, size = 0.5)) +
    theme(line = element_line(color=isu_key[[theme]]$colour_text)) +
    theme(rect = element_rect(color=isu_key[[theme]]$colour_text)) +
    theme(axis.ticks.x = element_line(color=isu_key[[theme]]$colour_text)) +
    theme(axis.ticks.y = element_line(color=isu_key[[theme]]$colour_text))

}
