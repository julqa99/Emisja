#' Pakiet Emisja
#'
#' Pakiet oblicza emisje EMEP/EEA zanieczyszczenia powietrza wybranego rodzaju pojazdu,
#' a takze wizualizujacy za pomoca wykresu wartosci wynikowe.
#'
#' Pakiet zawiera dwie funkcje:
#'
#' \code{obl_emisja()} oblicza emisje
#'\code{obl_emisja()} tworzy wykres
#'
#'
#' @section Dane do obliczen:
#' Funkcje pakietu korzystaja z danych dolaczonych do pakietu.
#'
#' Dane sa dostepne dla uzytkownika jako obiekty \code{input}, \code{wskazniki}.
#'
#' @docType package
#' @name Emisja
#' @import dplyr
#' @import ggplot2
#' @import magrittr
#' @import tidyverse
#' @import qpdf
NULL

utils::globalVariables(c("input", "wskazniki", "emisja_wynik"))
