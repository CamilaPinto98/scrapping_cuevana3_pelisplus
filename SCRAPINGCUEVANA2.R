#BIENVENIDO A NUESTRO PROYECTO COMPARAR Y ANALIZAR PAGINAS WEB DE ENTRETENCION#

###Instalamos la libreria y la cargamos

install.packages("rvest")
install.packages("curl")
install.packages("xml2")

library("rvest")

###ver direccion pagina web

Direccion <- "https://cuevana3.io/"

###leyendo direccion pagina web

Cuevana <- read_html(Direccion)

###anuncios de peliculas recomendadas en pagina web

Banner <- html_nodes(Cuevana, css=".TPMvCn .Title")
Banner_text <- html_text(Banner)
Banner_text

###Series en pagina web

Episodios <- html_nodes(Cuevana, css= ".hentry .Title")
Episodios1 <- html_text(Episodios)

###Estrenos pagina web

topEstrenos <- html_nodes(Cuevana, css= "#peli_top_estrenos-2 .Title")
topEstrenos <- html_text(topEstrenos)

###Ultimas peliculas agregadas recientemente

ultima <- html_nodes(Cuevana,css="#tab-1 .Title")
ultimasd <-html_text(ultima)

###peliculas destacadas

pelisDestacadas <- html_nodes(Cuevana, css= "#aa-mov1 .Title")
pelisDestacadas <- html_text(pelisDestacadas)

###peliculas con bajo ranking

maspelis <- html_nodes(Cuevana, css= "#widget_random_movies-2 .Title")
maspelis <- html_text(maspelis)

### redes sociales de la pagina web

redeSociales <- html_nodes(Cuevana, css= ".fab")
redeSociales <- html_text(redeSociales)

###Avisos legales pagina web

Avisolegal <- html_nodes(Cuevana, css= ".menu-item-1994 a")
Avisolegal <- html_text(Avisolegal)


###Vector series

estrenos_series <- Rating_recomend_text
estrenos_series



####Generando una data.frame con estrenos y serie


estrenos_series <- data.frame( 
  "Episodios" = Episodios, 
  "topEstrenos" = ultima
)
estrenos_series


###Simulamos cambio de pagina
###Simulamos navegar en 5 paginas


for(nroPagina in 1:5){
  print(nroPagina)
  print(paste("https://cuevana3.io/" , nroPagina, sep = ""))
}


###Visitamos pagina web para verificar
###Cantidad de visitas de cuevana2


enlace <-"https://www.similarweb.com/website/cuevana3.io/#overview"





