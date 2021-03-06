% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/obj.R
\name{plot.obj}
\alias{plot.obj}
\title{Plot OBJ form}
\usage{
\method{plot}{obj}(x, ..., face_colour = "grey", homog = 1)
}
\arguments{
\item{x}{obj model see `read_obj`}

\item{...}{passed to `rgl::shade3d`}

\item{face_colour}{colours to apply to faces}

\item{homog}{homogeneous fourth coordinate, defaults to 1}
}
\value{
the rgl shape3d object, invisibly
}
\description{
The value for `face_colour` is expanded to the length of the
number of faces, so the application is discrete to each face,
rather than varying between vertices.
}
\examples{
#x <- read_obj("https://raw.githubusercontent.com/Cecropia/thehallaframe/master/models/david.obj")
#plot(x)
#plot(x, col = "grey")
#plot(x, col = "grey", homog = 1.5)
#plot(x, col = "grey", homog = 2)
#lapply(seq(1.5, 4, by = 0.5), function(a) plot(x, col = "grey", homog = a))
f <- system.file("extdata/greek_bust.obj.zip", package = "obj")
obj <- read_obj(f)
lapply(seq(1.5, 4, by = 0.5), function(a) plot(obj, col = "grey", homog = a))
}
