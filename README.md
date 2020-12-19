
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Emisja

<!-- badges: start -->

<!-- badges: end -->

Pakiet stworzony w jezyku R w ramach zajec z przedmiotu Metody
Inwentaryzacji i Szacowania Emisji.

Pakiet pozwala na wyznaczanie emisji pochodzacej z transportu wedlug
sposobu opisanego w podreczniku wydanym przez Europejska Agensje
Srodowiska - EEA. Pakiet sklada sie z dwoch funkcji: - obl\_emisja() \<-
obliczanie emisji na podstawie dostarczonyc danych, - wykres\_emisja()
\<- wizualizacja danych.

## Instalacja z winietą

``` r
# Instalacja pakietu "devtools":
if (!require(devtools)) {install.packages("devtools"); require(devtools)}

# Pobranie i instalacja pakietu:
devtools::install_github("https://github.com/julqa99/Emisja",force=T,build_vignettes = T)
library(Emisja)
```

## Podstawowe działanie

Zawarte pliki z danymi w pakiecie pozwolą na uruchomienie funkcji z
domyślnymi parametrami, pokazując działanie naszego pakietu:

``` r
# Obliczanie emisji:
obl_emisja()
# Wykresy z wynikami:
wykres_emisja()
```

## Praca z pakietem

Aby w pełni wykorzystać pakiet zaleca się przeczytać winietę oraz help

``` r
# Winieta:
browseVignettes("Emisja")
# Help:
?Emisja
```

Szczegółowy opis można znaleźć: <https://rpubs.com/szewczyk/706045>
