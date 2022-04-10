library(plot3D)

x <- rchisq(1000, df = 4)
hs <- hist(x, breaks = 15)

hist3D(x = hs$mids, y = 1, z = matrix(ncol = 1, data = hs$density),
       bty = "g", ylim = c(0., 2.0), scale = FALSE, expand = 20,
       border = "black", col = "white", shade = 0.3, space = 0.1,
       theta = 20, phi = 20, main = "3-D perspective")

persp3D(z = volcano, main = "volcano", clab = c("height", "m"),
        breaks = seq(80,200, by = 10))

ribbon3D(z = volcano, contour = TRUE, zlim= c(-100, 200),
         image = TRUE)


#  ribbon3D(z = Volcano, contour = TRUE, zlim= c(-100, 200),
# image = TRUE) # Volcano should be volcano, otherwise there would have an error: Error in nrow(z) : object 'Volcano' not found


range(100)
