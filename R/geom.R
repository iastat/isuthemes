#' ISU geom
#'
#' @author Sam Tyner
#' @export geom_isu
#'
#' @examples
#' ggplot(data = mtcars) +
#'     geom_isu(aes(x = drat, y = qsec))
#'
#'
isuGrob <- function(x, y, size) {

  grid::rasterGrob(x             = x,
                   y             = y,
                   image         = cyclones,
                   default.units = "native",
                   height        = size,
                   width         = size*0.5)
}


GeomIsu <- ggplot2::ggproto("GeomIsu", ggplot2::Geom,

                #draw_panel = function(., data, scales, coordinates, ...) {
                draw_panel = function(data, panel_scales, coord, na.rm = FALSE) {
                        coords = coord$transform(data, panel_scales)
                            ggplot2:::ggname("geom_isu",
                                                isuGrob(coords$x, coords$y, coords$size)
                               )
                             },

                             non_missing_aes = c("size", "theme"),
                             required_aes = c("x", "y"),
                             default_aes = ggplot2::aes(size=.1),

                             icon = function(.){}, # a grob representing the geom for the webpage

                             desc_params = list( # description of the (optional) parameters of draw
                             ),

                             seealso = list(
                               geom_point = ggplot2::GeomPoint$desc
                             ),

                             examples = function(.) {
                             }
)

geom_isu <- function(mapping = NULL, data = NULL, stat = "identity",
                      position = "identity", na.rm = FALSE,
                      show.legend = NA, inherit.aes = TRUE, ...) {
  ggplot2::layer(
    data = data,
    mapping = mapping,
    stat = stat,
    geom = GeomIsu,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = list(
      na.rm = na.rm,
      ...
    )
  )
}

