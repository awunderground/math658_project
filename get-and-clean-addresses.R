







boom <- ap %>%
  filter(str_detect(fulladdress, "NEW HAMPSHIRE"))






count(ap, res_type)





count(addresses, quadrant)

count(addresses, unittype)

addresses %>%
  filter(is.na(quadrant)) %>%
  count(unittype)

boom <- addresses %>%
  filter(str_detect(fulladdress, "NEW HAMPSHIRE")) 


