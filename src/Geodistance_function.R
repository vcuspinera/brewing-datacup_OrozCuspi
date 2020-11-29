library(geosphere)

#' Distancia por georeferenciación
#'
#' @param georef 2-column vector con longitud y latitud
#'
#' @return matriz de distancias geodesicas en km
#'
#' @examples geo_distance(bd_georref)
#' 
geo_distance <- function(georef) {
	my_matrix <- matrix(0, nrow = nrow(georef), ncol = nrow(georef))
	for (i in 1:nrow(georef)){
		my_matrix[i, ] <- distGeo(georef, georef[i, ], 
								  a=6378137, f=1/298.257223563)
		}
	return(my_matrix / 1000)
}