#' @title random_aRt
#'
#' @description Generates a random image
#'
#' @param seed A seed for reproducible function outputs
#'
#' @return An image made out of one of 5 aRtsy functions at random with a random colorpallette
#'
#' @export # recommended to export your functions. It automatically adds these functions to the NAMESPACE file.
#'
#' @importFrom aRtsy "%>%"


random_art <- function(seed){
  set.seed(seed) # set seed
  colorpal <- colorPalette('random', 5)# random colorpallette
  art_functions <- powerfuns <- vector("list", 5) # random art list containing 5 different functions from the aRtsy package
  art_functions[[1]] <- canvas_mandelbrot(colorpal)
  art_functions[[2]] <- canvas_nebula(colorpal)
  art_functions[[3]] <- canvas_mosaic(colorpal)
  art_functions[[4]] <- canvas_gemstone(colorpal)
  art_functions[[5]] <- canvas_forest(colorpal)
  i <- sample(1:5,1)
  random_image <- art_functions[[i]]
  return(random_image)
}
