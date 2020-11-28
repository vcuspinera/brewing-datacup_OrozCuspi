library(Imap)

my_matrix <- matrix(0, nrow = nrow(data), ncol = nrow(data))

geo_distance <- function(georef) {
	for (i in 1:nrow(georef)){
		for (j in 1:nrow(georef)){
			my_matrix[i, j] <- gdist(lon.1 = georef[i, 2],
									 lat.1 = georef[i, 1],
									 lon.2 = georef[j, 2],
									 lat.2 = georef[j, 1],
									 units="km")
			# print(i)
		}
	}
	return(my_matrix)
}