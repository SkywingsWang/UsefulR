install.packages("magick")

library(magick)

# Set Path
# 设置导入和导出路径
image_path <- "something.jpg"
output_path <- "something.jpg"

image <- image_read(image_path)

# Set the target file size (here set to 1M or less)
# 设置目标文件大小（1M以内）
target_size <- 5e5

original_size <- file.info(image_path)$size

scale <- sqrt(target_size / original_size)

compressed_image <- image_resize(image, paste0(as.integer(scale * 100), "%"))

image_write(compressed_image, path = output_path)
