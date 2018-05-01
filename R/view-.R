#' @rdname gganimate-ggproto
#' @format NULL
#' @usage NULL
#' @export
#' @importFrom ggplot2 ggproto
View <- ggproto('View', NULL,
  setup_params = function(self, data, params) {
    params
  },
  train = function(self, data, params) {
    params
  },
  set_view = function(self, plot, params, i) {
    plot
  },
  reset_limits = function(plot, xlim, ylim) {
    plot$layout$coord$limits$x <- xlim
    plot$layout$coord$limits$y <- ylim
    plot$layout$setup_panel_params()
    plot
  },
  get_ranges = function(data) {
    lapply(data, function(d) {
      x <- unlist(d[names(d) %in% c('x', 'xmin', 'xmax', 'xend')])
      y <- unlist(d[names(d) %in% c('y', 'ymin', 'ymax', 'yend')])
      list(x = range(x), y = range(y))
    })
  }
)
#' @importFrom ggplot2 ggplot_add
#' @export
ggplot_add.View <- function(object, plot, objectname) {
  plot <- as.gganim(plot)
  plot$view <- object
  plot
}