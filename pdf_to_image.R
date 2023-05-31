install.packages("pdftools")

library(pdftools)

pdf_path <- "something.pdf"
image_path <- "something.jpg"

pdf_convert(pdf_path, format = "jpeg", pages = 1, filenames = image_path, dpi = 300)
