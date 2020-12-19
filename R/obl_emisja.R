#' Funkcja obliczenia emisji spalin
#'
#' Funkcja oblicza emisje korzystajac z danych zawartych w obiekcie
#' \code{wskazniki}, a tazke \code{input}.
#' W obiekcie \code{wskazniki} zapisane sa dane o emisji pobrane z EEA.
#' W obiekcie \code{input} zapisane sa stworzone losowo dane o natezeniu ruchu.
#'
#' @details Wzor na obliczenie emisji:
#' Emisja = Nat x ((Alpha x Procent ^ 2 + Beta x Procent + Gamma + (Delta/Procent))/
#'          (Epsilon x Procent ^ 2 + Zita x Procent + Hta) x (1-Reduction))
#'
#' @param dane data_frame - dane wejsciowe
#' @param kategoria character - kategoria pojazdu
#' @param euro character - europejski standard emisji spalin
#' @param mode character - miejsce pomiaru
#' @param substancja character - typ emitowanego zanieczyszczenia
#'
#' @return data_frame
#'
#' @export
#' @examples
#' \dontrun{
#' # Parametry domyslne
#'   obl_emisja()
#' # parametry zmodyfikowane
#'   obl_emisja(dane = input,
#'              kategoria = "Passenger Cars",
#'              euro = "Euro 4",
#'              mode = "",
#'              substancja = "CH4)
#'}
obl_emisja <- function(dane = input,
                       kategoria = "Passenger Cars",
                       euro = "Euro 5",
                       mode = "",
                       substancja = c("CO", "EC")) {

  emisja_wynik <- wskazniki %>%
    filter(Category %in% kategoria) %>%
    filter(Euro.Standard %in% euro) %>%
    filter(Pollutant %in% substancja) %>%
    filter(Mode %in% mode)

  emisja_wynik <-inner_join(x = emisja_wynik, y = input, by = c("Segment","Fuel","Technology"))

  emisja_wynik <- emisja_wynik%>%
    mutate(Emisja = Nat * ((Alpha * Procent ^ 2 + Beta * Procent + Gamma + (Delta/Procent))/
                             (Epsilon * Procent ^ 2 + Zita * Procent + Hta) * (1-Reduction))
    )%>%
    select(Category, Fuel, Euro.Standard, Technology, Pollutant, Mode, Segment, Nat, Emisja)

  emisja_wynik <<- data.frame(emisja_wynik)
  return(emisja_wynik)
}
