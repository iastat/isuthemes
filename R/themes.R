#' csafe theme
#'
#' @export
#' @name theme_csafe
#' @author Sam Tyner
#' @title CSAFE themes for ggplot2
#' @examples
#' theme_csafe(theme="primary")

theme_csafe <- function(theme="primary", csafe_key = list(
  primary = list(
     family_title="Montserrat Bold",
     family_text = "Montserrat Light",
     colour_title = "#003A70",
     colour_text = "#8A8A8D"),
  secondary = list(
    family_title="Montserrat Bold",
    family_text = "Montserrat Light",
    colour_title = "#9F1B96",
    colour_text = "#555759"
  )
)) {

  theme_classic() +
    theme(text=element_text(size=18, family=csafe_key[[theme]]$family_text)) +
    theme(legend.title=element_blank()) +
    theme(plot.title = element_text(size = 25, colour = csafe_key[[theme]]$colour_title, family=csafe_key[[theme]]$family_title)) +
    theme(plot.subtitle = element_text(size = 15, colour = csafe_key[[theme]]$colour_title, family=csafe_key[[theme]]$family_title)) +
    theme(axis.text.x=element_text(color=csafe_key[[theme]]$colour_text)) +
    theme(axis.text.y=element_text(color=csafe_key[[theme]]$colour_text)) +
    theme(axis.title.x=element_text(color=csafe_key[[theme]]$colour_text, vjust=0)) +
    theme(axis.title.y=element_text(color=csafe_key[[theme]]$colour_text, vjust=1.25)) +
    theme(plot.background = element_blank(),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank())+
    theme(panel.border= element_blank())+
    theme(axis.line.x = element_line(color=csafe_key[[theme]]$colour_text, size = 0.5),
          axis.line.y = element_line(color=csafe_key[[theme]]$colour_text, size = 0.5)) +
    theme(line = element_line(color=csafe_key[[theme]]$colour_text)) +
    theme(rect = element_rect(color=csafe_key[[theme]]$colour_text)) +
    theme(axis.ticks.x = element_line(color=csafe_key[[theme]]$colour_text)) +
    theme(axis.ticks.y = element_line(color=csafe_key[[theme]]$colour_text))

}
