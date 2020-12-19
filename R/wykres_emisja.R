#' Funkcja do Wizualizacji danych dostarczonych z pakietem
#'
#' @param data data.frame
#' @param one_kategoria char - Wybor pierwszej kolumny z data
#' @param one_wartosc char - wybor wartosci z pierwszej kolumny
#' @param two_kategoria char - wybor 2 kolumny z data
#' @param two_wartosc double - wyswietlenie emisji
#' @export
#'
#' @examples
#' \don't run {
#' #Wygenerowanie wykresu dla danych domyslnych
#' wykres_emisja()
#'}
#'
#'
wykres_emisja <- function(data = emisja_wynik,
                       one_kategoria = Category,
                       one_wartosc = "Passenger Cars",
                       two_kategoria = Segment,
                       two_wartosc = Emisja) {


  one_kategoria <- enquo(one_kategoria)
  two_kategoria <- enquo(two_kategoria)
  two_wartosc   <- enquo(two_wartosc)

  if (!is.null(one_wartosc)) {
    data <- data %>%
      filter(!!one_kategoria %in% one_wartosc)
  }


  ggplot(data, aes(x = !!two_kategoria,
                                   y = !!two_wartosc,
                                   fill = !!two_kategoria)) +
    geom_boxplot(outlier.shape = NA,
                          col="green")+
    theme_minimal() -> plot

  wykres_gp <- plot + labs(title = "Zalezosc Wartosci Parametru emisji od wybranej kategorii",
                              subtitle = "Funkcja wizualizacji pakietu",
                              x = "Wybrana kategoria",
                              y = "Wybrany parametr - wartosc",
                              caption = "Opracowano na podstawie danych z EEA",
                              color = "Kategoria") +
    ylim(0, 40)

  return(wykres_gp)
}
