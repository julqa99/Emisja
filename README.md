
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Emisja

<!-- badges: start -->

<!-- badges: end -->

Projekt z przedmiotu Metody Inwentaryzacji i Szacowania Emisji, polega
na stworzeniu pakietu. Pracowalismy w programie RStudio. Pakiet, ktory
zostal przez nas stworzony pozwala wyznaczyc emisje pochodzaca z
tarnsportu(podrecznik wydany przez Europejska Agensje Srodowiska - EEA.)
Zostaly stworzone dwie funkcje, mianowicie: obl_emisja() <- obliczanie
emisji na podstawie dostarczonyc danych, - wykres_emisja() \<-
wizualizacja danych.

## Instalacja z winietą

``` r
# Instalacja pakietu "devtools":
if (!require(devtools)) {install.packages("devtools"); require(devtools)}

# Pobranie i instalacja pakietu:
devtools::install_github("https://github.com/julqa99/Emisja",force=T,build_vignettes = T)
# ewentualnie w ramach problemu:
devtools::install_git("https://github.com/julqa99/Emisja")
library(Emisja)
```

## Podstawowe działanie

Majac pliki z naszymi danymi w pakiecie mozemy uruchomic nasze funkcje z
domyslnymi parametrami, sprawdzimy dzialanie naszego pakietu:

``` r
# Obliczanie emisji:
obl_emisja()
# Wykresy z wynikami:
wykres_emisja()
```

## Praca z pakietem

Winieta oraz help help - tam znajduja sie informacje w jaki sposob
wykorzystac pakiet w pelni.

``` r
# Winieta:
browseVignettes("Emisja")
# Help:
?Emisja
```

Szczegółowy opis można znaleźć: <https://rpubs.com/szewczyk/706045>
