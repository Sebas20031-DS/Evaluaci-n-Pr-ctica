# Datos de los hombres
hombres_datos <- data.frame(
  Age_Group = c("<12", "12-14", "15-17", "18-20", "21-29", "30-39", "40-49", "50-64", "65+"),
  Clothing = c(81, 138, 304, 384, 942, 359, 178, 137, 45),
  Clothing_Accessories = c(66, 204, 193, 149, 297, 109, 53, 68, 28),
  Provisions_Tobacco = c(150, 340, 229, 151, 313, 136, 121, 171, 145),
  Writing_Materials = c(667, 1409, 527, 84, 92, 36, 36, 37, 17),
  Books = c(67, 259, 258, 146, 251, 96, 48, 56, 41),
  Records = c(24, 272, 368, 141, 167, 67, 29, 27, 7),
  Household_Goods = c(47, 117, 98, 61, 193, 75, 50, 55, 29),
  Sweets = c(430, 637, 246, 40, 30, 11, 5, 17, 28),
  Toys = c(743, 684, 116, 13, 16, 16, 6, 3, 8),
  Jewelry = c(132, 408, 298, 71, 130, 31, 14, 11, 10),
  Perfume = c(32, 57, 61, 52, 111, 54, 41, 50, 28),
  Hobbies_Tools = c(197, 547, 402, 138, 280, 200, 152, 211, 111),
  Other = c(209, 550, 454, 252, 624, 195, 88, 90, 34),
  Total = c(2845, 5622, 3554, 1682, 3446, 1385, 821, 933, 531)
)

# Visualizar los primeros registros del dataframe
head(hombres_datos)

# Datos de las mujeres
mujeres_datos <- data.frame( 
  Age_Group = c("<12", "12-14", "15-17", "18-20", "21-29", "30-39", "40-49", "50-64", "65+"),
  Clothing = c(71, 241, 477, 436, 1180, 1009, 517, 488, 173),
  Clothing_Accessories = c(19, 98, 114, 108, 207, 165, 102, 127, 64),
  Provisions_Tobacco = c(59, 111, 58, 76, 132, 121, 93, 214, 215),
  Writing_Materials = c(224, 346, 91, 18, 30, 27, 23, 27, 13),
  Books = c(19, 60, 50, 32, 61, 43, 31, 57, 44),
  Records = c(7, 32, 27, 12, 21, 9, 7, 13, 0),
  Household_Goods = c(22, 29, 41, 32, 65, 74, 51, 79, 39),
  Sweets = c(137, 240, 80, 12, 16, 14, 10, 23, 42),
  Toys = c(113, 98, 14, 10, 12, 31, 8, 17, 6),
  Jewelry = c(162, 548, 303, 74, 100, 48, 22, 26, 12),
  Perfume = c(70, 178, 141, 70, 104, 81, 46, 69, 41),
  Hobbies_Tools = c(15, 29, 9, 14, 30, 36, 24, 35, 11),
  Other = c(24, 58, 72, 67, 157, 107, 66, 64, 55),
  Total = c(942, 2068, 1477, 961, 2115, 1765, 1000, 1239, 715)
)

# Visualizar los primeros registros del dataframe
head(mujeres_datos)
