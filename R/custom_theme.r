#' Apply a ggplot2 theme to a plot
#'
#' @param plt A ggplot2 plot
#'
#' @return A plot with a specific theme
#' @export
#' 
#' @examples
#' p <- mtcars |>
#' ggplot(aes(x = hp, y = mpg, color = cyl)) + geom_point()
#' my_theme(p)

my_theme <- function(plt){
  new_theme <-
  theme(
    panel.background = element_rect(fill = "lightblue", color = "blue"),
    panel.grid.major = element_line(color = "black", linewidth = 0.2),
    panel.grid.minor = element_blank(),
    legend.position = "top"
  )
  new_plt <- plt + new_theme
  return(new_plt)
}