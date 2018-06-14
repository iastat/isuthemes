#' CSAFE geom
#'
#' @author Sam Tyner
#' @export geom_csafe
#'
#' @export
#'
#'
csafeGrob <- function(x, y, size, logo = system.file("extdata", "csafeprint.png",
                                                     package = "csafethemes")) {


  grid::rasterGrob(x             = x,
                   y             = y,
                   image         = img,
                   default.units = "native",
                   height        = size,
                   width         = size*0.5)
}


GeomCsafe <- ggplot2::ggproto("GeomCsafe", ggplot2::Geom,

                #draw_panel = function(., data, scales, coordinates, ...) {
                draw_panel = function(data, panel_scales, coord, na.rm = FALSE) {
                        coords = coord$transform(data, panel_scales)
                            ggplot2:::ggname("geom_csafe",
                                                csafeGrob(coords$x, coords$y, coords$size, coords$theme)
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

geom_csafe <- function(mapping = NULL, data = NULL, stat = "identity",
                      position = "identity", na.rm = FALSE,
                      show.legend = NA, inherit.aes = TRUE, ...) {
  ggplot2::layer(
    data = data,
    mapping = mapping,
    stat = stat,
    geom = GeomCsafe,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = list(
      na.rm = na.rm,
      ...
    )
  )
}

