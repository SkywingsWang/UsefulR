install.packages("magick")

library(magick)

# Edit path 
# 编辑文件路径
image_path <- "something.jpg"

image <- image_read(image_path)

# Set the target file size (here set to 1M or less) 
# 设置目标文件大小（这里设置1M以内）
target_size <- 5e5

while (image_file_size(image) > target_size) {
  image <- image_scale(image, "50%")  
}

image_write(image, path = image_path)
