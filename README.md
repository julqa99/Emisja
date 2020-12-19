# Emisja

<!-- badges: start -->
<!-- badges: end -->

Pakiet stworzony w jezyku R w ramach zajec z przedmiotu Metody Inwentaryzacji i Szacowania Emisji.

Pakiet pozwala na wyznaczanie emisji pochodzacej z transportu wedlug sposobu opisanego w podreczniku wydanym przez Europejska Agensje Srodowiska - EEA. Pakiet sklada sie z dwoch funkcji: - fun_obl_em() <- obliczanie emisji na podstawie dostarczonyc danych, - fun_em_plot() <- wizualizacja danych.

## Instalacja z winietą

 {r setup, eval=FALSE}
# Instalacja pakietu "devtools":
if (!require(devtools)) {install.packages("devtools"); require(devtools)}

# Pobranie i instalacja pakietu:
devtools::install_github("https://github.com/julqa99/Emisja",force=T,build_vignettes = T))
library(Emisja)


## Podstawowe działanie

Zawarte pliki z danymi w pakiecie pozwolą na uruchomienie funkcji z domyślnymi parametrami, pokazując działanie naszego pakietu:

 {r example, eval= FALSE}
# Obliczanie emisji:
obl_emisji()
# Wykresy z wynikami:
fun_em_plot()

## Praca z pakietem

Aby w pełni wykorzystać pakiet zaleca się przeczytać winietę oraz help

{r, eval=FALSE}
# Winieta:
browseVignettes("Emisja")
# Help:
?Emisja
