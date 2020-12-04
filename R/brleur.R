#' Provides a plot of the Brazilian Real/Euro Exchange Rate
#'
#'
#' @param - requires no paramenters
#'
#' @return ggplot graph
#' @export
#' @examples
#' brl_eur()
#' 
brl_eur <- function(){
  library(devtools)
  library(roxygen2)
  library(tidyquant)
  library(ggplot2)
  brl_eur <- tq_get('EURBRL=X?P=EURBRL=X',
                from = "2020-01-01",
                to = Sys.Date(),
                get = "stock.prices")

  ggplot(brl_eur, aes(x = date, y = close)) +
  geom_line() +
  theme_minimal() +
  labs(x = 'Date',
       y = "Close Price",
       title = "Exchange rate BRL/EUR in 2020 until today")
}


