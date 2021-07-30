---
title: "BIENVENIDO A NUESTRO PROYECTO DE PAGINAS WEB"
output: html_document
---
  
  
# Base de datos : A continuacion veremos como se instala la libreria, cargando datos para analizar datos sobre pelisplus
  
  
###INSTALAMOS LIBRERIA Y LA CARGAMOS

install.packages("rvest")
install.packages("curl")
install.packages("xml2")

library("rvest")


###VEMOS DIRECCION PAG WEB

Direccion <- "https://pelisplushd.net/"

###LEEMOS PAG WEB

pelisplus <- read_html(Direccion)


###poster pelis

Banner <- html_nodes(pelisplus, css=".posters-caps")
Banner_text <- html_text(Banner)
Banner_text

###caratula peliculas recomendadas en pagina web

recomendada <- html_nodes(pelisplus, css= ".Posters-img")
recomendadasi <- html_text(recomendada)


###Valoracion peliculas en inicio

valoracion <- html_nodes(pelisplus, css= "#default-tab-1 span")
valoracionsi <- html_text(valoracion)


###Simulamos cambio de pagina
###Simulamos navegar en 10 paginas


for(nroPagina in 1:10){
  print(nroPagina)
  print(paste("https://pelisplushd.net/" , nroPagina, sep = ""))
}


###Categorias contenido pag web

categorias <- html_nodes(pelisplus, css= ".nav-link")
categorias1 <- html_text(categorias)

###navegando por la pagina 2 de todas las peliculas

print(paste("navegando nro pag", 2))
urlpelisplus <- paste("https://pelisplushd.net/peliculas?page=2", 2 , sep = "")
print(urlpelisplus)
pelisplus <- read_html(urlpelisplus)
peliculas <- html_nodes(pelisplus, css=".active a")


###peliculas mas vistas en el dia


masvistas <- html_nodes(pelisplus, css="#load_topivews img" )
masvistas1 <- html_text(masvistas)


###visitamos pagina web de datos analiticos
###para saber el nivel de visita de la pagina

enlace <-"https://www.similarweb.com/website/pelisplus.so/"

  







