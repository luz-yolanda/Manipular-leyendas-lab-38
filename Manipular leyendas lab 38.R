##################################################################
# Hecho con gusto por Luz Yolanda Rivera Álvarez
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
# manipular leyendas
#################################################################
#instalando paquete con los datos
#install.packages("gapminder")
#install.packages("ggplot2")
# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)
# cargando datos a entorno
data("gapminder")

# filtrando por anio 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]



# colocando texto base
p <- ggplot(data = gapminder2007,
            mapping = aes (x = gdpPercap, 
                           y = lifeExp,
                           color = continent))+
  geom_point()

# mostrar la grafica
p

# quitar titulo de la leyenda
p + theme(legend.title = element_blank())

# quitar toda la leyenda
p + theme(legend.position = "none")

# cambiar la leyenda de posición
# opciones: # rigth, left, bottom, top
p + theme(legend.position = "top")

# cambiar con coordenadas de 0 a 1

p + theme(legend.position = c(0.5,0.5))

p + theme(legend.position = c(0.8,0.3))

p + theme(legend.position = c(0.9,0.2))