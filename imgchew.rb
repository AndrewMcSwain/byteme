

require "base64"


base64_image = 
  File.open("test.jpg", "rb") do |file|
    Base64.strict_encode64(file.read)
  end

regex_start = "MHhGRkUw" # 0xFFE0
regex_end = "MHhGRkVG"   # 0xFFEF
# how to join these programatically?

                  # start_pattern, #end_pattern
# get_exif = /(?<=/MHhGRkUw/).*(?=/MHhGRkVG/)/
# exif_data = base64_image
#              .split(regex_start)
#              .last
#              .split(regex_end)
#              .first

# puts exif_data
#

puts base64_image
