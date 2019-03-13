car1 = Car.find_or_create_by!({
  year: "2018",
  make: "Mazda",
  model: "3 GX",
  condition: 'new'
})

Price.create!({
  vehicle_price: 16000.00,
  freight_delivery: 1695.00,
  total_price: 19995.35,
  car_id: 1
})

Picture.create!({
  url: "http://picolio.auto123.com/18photo/mazda/2018-mazda-3-gx.png",
  car_id: 1
})

Warranty.create!({
  bumper: "Unlimited/km, 36/Months",
  powertrain: "Unlimited/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 84/Months",
  car_id: 1
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 8.4,
  auto_highway: 6.4,
  auto_combined: 7.3,
  manual_city: 8.5,
  manual_highway: 6.2,
  manual_combined: 7.24,
  car_id: 1
})

FuelPrice.create({
  first: 2311.66,
  second: 2381.43,
  third: 2452.54,
  fourth: 2526.33,
  fifth: 2601.46,
  total: 12273.41,
  car_id: 1
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 167.71,
  fourth: 399.81,
  fifth: 583.62,
  total: 1151.14,
  car_id: 1
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 164.69,
  second: 333.14,
  third: 271.47,
  fourth: 539.18,
  fifth: 1166.35,
  total: 2474.83,
  car_id: 1
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 4393.18,
  second: 1141.54,
  third: 1079.12,
  fourth: 1267.12,
  fifth: 1199.44,
  total: 9080.4,
  car_id: 1
})


car2 = Car.find_or_create_by!({
  year: "2018",
  make: "Mazda",
  model: "3 GX Hatchback",
  condition: 'new'
})

Price.create!({
  vehicle_price: 19900.00,
  freight_delivery: 1695.00,
  total_price: 21595.00,
  car_id: 2
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/mazda/2018-mazda-3-gx_1.png",
  car_id: 2
})

Warranty.create!({
  bumper: "Unlimited/km, 36/Months",
  powertrain: "Unlimited/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 84/Months",
  car_id: 2
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 8.4,
  auto_highway: 6.4,
  auto_combined: 7.3,
  manual_city: 8.6,
  manual_highway: 6.4,
  manual_combined: 7.39,
  car_id: 2
})

FuelPrice.create({
  first: 2311.66,
  second: 2381.43,
  third: 2452.54,
  fourth: 2526.33,
  fifth: 2601.46,
  total: 12273.41,
  car_id: 2
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 167.71,
  fourth: 399.81,
  fifth: 583.62,
  total: 1151.14,
  car_id: 2
})


# 1CAD = 0.752USD
Maintenance.create!({
  first: 353.26,
  second: 718.51,
  third: 571.88,
  fourth: 673.65,
  fifth: 2358.16,
  total: 5198.88,
  car_id: 2
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 3504.58,
  second: 2084.88,
  third: 1972.91,
  fourth: 2315.50,
  fifth: 2192.86,
  total: 12070.72,
  car_id: 2
})

car3 = Car.find_or_create_by!({
  year: "2018",
  make: "Mazda",
  model: "6 GS",
  condition: 'new'
})

Price.create!({
  vehicle_price: 27000.00,
  freight_delivery: 1795.00,
  total_price: 28795.00,
  car_id: 3
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/mazda/2018-mazda-6-gs.png",
  car_id: 3
})

Warranty.create!({
  bumper: "Unlimited/km, 36/Months",
  powertrain: "Unlimited/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 84/Months",
  car_id: 3
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.1,
  auto_highway: 6.7,
  auto_combined: 7.78,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 3
})

FuelPrice.create({
  first: 2655.13,
  second: 2735.62,
  third: 2817.47,
  fourth: 2901.99,
  fifth: 2989.20,
  total: 14099.40,
  car_id: 3
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 167.71,
  fourth: 399.81,
  fifth: 583.62,
  total: 1151.14,
  car_id: 3
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 387.92,
  second: 829.15,
  third: 607.87,
  fourth: 2643.43,
  fifth: 1642.31,
  total: 6110.68,
  car_id: 3
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6350.63,
  second: 2330.16,
  third: 2204.86,
  fourth: 2586.11,
  fifth: 2448.80,
  total: 15920.56,
  car_id: 3
})

car4 = Car.find_or_create_by!({
  year: "2018",
  make: "Mazda",
  model: "MX-5 GX",
  condition: 'new'
})

Price.create!({
  vehicle_price: 31900.00,
  freight_delivery: 1795.00,
  total_price: 33695.00,
  car_id: 4
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/mazda/2018-mazda-mx-5-gx.png",
  car_id: 4
})

Warranty.create!({
  bumper: "Unlimited/km, 36/Months",
  powertrain: "Unlimited/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 84/Months",
  car_id: 4
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.0,
  auto_highway: 6.7,
  auto_combined: 7.74,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 4
})

FuelPrice.create({
  first: 2643.05,
  second: 2722.21,
  third: 2804.05,
  fourth: 2887.23,
  fifth: 2974.44,
  total: 14030.98,
  car_id: 4
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 148.92,
  fourth: 360.90,
  fifth: 527.27,
  total: 1037.10,
  car_id: 4
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 393.25,
  second: 674.52,
  third: 746.51,
  fourth: 1334.38,
  fifth: 3121.99,
  total: 6270.64,
  car_id: 4
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 8063.59,
  second: 2942.03,
  third: 2403.48,
  fourth: 2694.08,
  fifth: 2354.16,
  total: 18457.34,
  car_id: 4
})

car5 = Car.find_or_create_by!({
  year: "2018",
  make: "Mazda",
  model: "CX-5 GX",
  condition: 'new'
})

Price.create!({
  vehicle_price: 25900.00,
  freight_delivery: 1895.00,
  total_price: 27795.00,
  car_id: 5
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/mazda/2018-mazda-cx-5-gx_1.png",
  car_id: 5
})

Warranty.create!({
  bumper: "Unlimited/km, 36/Months",
  powertrain: "Unlimited/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 84/Months",
  car_id: 5
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.8,
  auto_highway: 7.7,
  auto_combined: 8.65,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 5
})

FuelPrice.create({
  first: 2559.87,
  second: 2636.34,
  third: 2715.50,
  fourth: 2797.34,
  fifth: 2881.86,
  total: 13590.91,
  car_id: 5
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 93.32,
  fourth: 222.48,
  fifth: 324.76,
  total: 640.56,
  car_id: 5
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 383.92,
  second: 854.48,
  third: 478.56,
  fourth: 2214.19,
  fifth: 2379.49,
  total: 6310.64,
  car_id: 5
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 7145.12,
  second: 2375.49,
  third: 2246.18,
  fourth: 2636.76,
  fifth: 2496.79,
  total: 16900.34,
  car_id: 5
})

car6 = Car.find_or_create_by!({
  year: "2018",
  make: "Mazda",
  model: "CX-3 GX",
  condition: 'new'
})

Price.create!({
  vehicle_price: 19995.00,
  freight_delivery: 1895.00,
  total_price: 21890.00,
  car_id: 6
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/mazda/2018-mazda-cx-3-gx.png",
  car_id: 6
})

Warranty.create!({
  bumper: "Unlimited/km, 36/Months",
  powertrain: "Unlimited/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 84/Months",
  car_id: 6
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 8.2,
  auto_highway: 6.9,
  auto_combined: 7.48,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 6
})

FuelPrice.create({
  first: 2311.66,
  second: 2381.43,
  third: 2452.54,
  fourth: 2526.33,
  fifth: 2601.46,
  total: 12273.41,
  car_id: 6
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 148.66,
  fourth: 360.27,
  fifth: 526.34,
  total: 1035.28,
  car_id: 6
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 330.60,
  second: 762.50,
  third: 625.20,
  fourth: 2019.56,
  fifth: 2686.09,
  total: 6423.94,
  car_id: 6
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6507.93,
  second: 1959.58,
  third: 1854.27,
  fourth: 2176.86,
  fifth: 2060.89,
  total: 14559.52,
  car_id: 6
})

car7 = Car.find_or_create_by!({
  year: "2018",
  make: "Mazda",
  model: "CX-9 GS",
  condition: 'new'
})

Price.create!({
  vehicle_price: 36400.00,
  freight_delivery: 1895.00,
  total_price: 38295.00,
  car_id: 7
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/mazda/2018-mazda-cx-9-gs.png",
  car_id: 7
})

Warranty.create!({
  bumper: "Unlimited/km, 36/Months",
  powertrain: "Unlimited/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 84/Months",
  car_id: 7
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 10.6,
  auto_highway: 8.4,
  auto_combined: 9.39,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 7
})

FuelPrice.create({
  first: 2985.17,
  second: 3075.06,
  third: 3167.64,
  fourth: 3261.55,
  fifth: 3359.49,
  total: 15848.91,
  car_id: 7
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 178.13,
  fourth: 200.83,
  fifth: 425.90,
  total: 624.11,
  car_id: 7
})


# 1CAD = 0.752USD
Maintenance.create!({
  first: 557.21,
  second: 1069.10,
  third: 1146.42,
  fourth: 3092.66,
  fifth: 3548.57,
  total: 9413.96,
  car_id: 7
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 10656.36,
  second: 3744.52,
  third: 3543.23,
  fourth: 4156.43,
  fifth: 3936.48,
  total: 26037.03,
  car_id: 7
})

car8 = Car.find_or_create_by!({
  year: "2018",
  make: "Acura",
  model: "TLX",
  condition: 'new'
})

Price.create!({
  vehicle_price: 35990.00,
  freight_delivery: 2045.00,
  total_price: 38035.00,
  car_id: 8
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/acura/2018-acura-tlx_1.png",
  car_id: 8
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 8
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.6,
  auto_highway: 6.6,
  auto_combined: 7.95,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 8
})

FuelPrice.create({
  first: 2841.61,
  second: 2927.48,
  third: 3014.69,
  fourth: 3105.92,
  fifth: 3198.49,
  total: 15088.20,
  car_id: 8
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 554.47,
  fifth: 849.11,
  total: 1403.58,
  car_id: 8
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 362.59,
  second: 1081.10,
  third: 839.82,
  fourth: 1636.98,
  fifth: 2518.12,
  total: 6438.61,
  car_id: 8
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 8950.06,
  second: 4141.77,
  third: 3385.93,
  fourth: 3795.18,
  fifth: 3315.28,
  total: 23588.23,
  car_id: 8
})

car9 = Car.find_or_create_by!({
  year: "2018",
  make: "Acura",
  model: "RLX Tech",
  condition: 'new'
})

Price.create!({
  vehicle_price: 65490.00,
  freight_delivery: 2045.00,
  total_price: 67535.00,
  car_id: 9
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/acura/2018-acura-rlx-tech_1.png",
  car_id: 9
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 48/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 9
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 12.4,
  auto_highway: 8.7,
  auto_combined: 10.34,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 9
})

FuelPrice.create({
  first: 3332.66,
  second: 3433.28,
  third: 3535.25,
  fourth: 3641.24,
  fifth: 3751.25,
  total: 17693.68,
  car_id: 9
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 554.47,
  fifth: 849.11,
  total: 1403.58,
  car_id: 9
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 253.28,
  second: 1183.74,
  third: 907.80,
  fourth: 3239.30,
  fifth: 2370.15,
  total: 7954.28,
  car_id: 9
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 22443.15,
  second: 6642.56,
  third: 5424.16,
  fourth: 6082.68,
  fifth: 5312.18,
  total: 45904.74,
  car_id: 9
})

car10 = Car.find_or_create_by!({
  year: "2018",
  make: "Acura",
  model: "ILX",
  condition: 'new'
})

Price.create!({
  vehicle_price: 29990.00,
  freight_delivery: 2045.00,
  total_price: 32035.00,
  car_id: 10
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/acura/2018-acura-ilx.png",
  car_id: 10
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 10
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.4,
  auto_highway: 6.8,
  auto_combined: 7.97,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 10
})

FuelPrice.create({
  first: 2643.05,
  second: 2722.21,
  third: 2804.05,
  fourth: 2887.23,
  fifth: 2974.44,
  total: 14030.98,
  car_id: 10
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 554.47,
  fifth: 849.11,
  total: 1403.58,
  car_id: 10
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 310.60,
  second: 965.12,
  third: 907.80,
  fourth: 1487.68,
  fifth: 2430.14,
  total: 6010.70,
  car_id: 10
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 8491.50,
  second: 2878.04,
  third: 2351.49,
  fourth: 2636.76,
  fifth: 2303.50,
  total: 18661.30,
  car_id: 10
})

car11 = Car.find_or_create_by!({
  year: "2018",
  make: "Volvo",
  model: "S60 T5",
  condition: 'new'
})

Price.create!({
  vehicle_price: 41950.00,
  freight_delivery: 2015.00,
  total_price: 43965.00,
  car_id: 11
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/volvo/2018-volvo-s60-t5-base-awd.png",
  car_id: 11
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "80000/km, 48/Months",
  roadside: "Unlimited/km, 48/Months",
  rust: "Unlimited/km, 144/Months",
  car_id: 11
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 11.0,
  auto_highway: 8.1,
  auto_combined: 9.5,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 11
})

FuelPrice.create({
  first: 2643.05,
  second: 2722.21,
  third: 2804.05,
  fourth: 2887.23,
  fifth: 2974.44,
  total: 14030.98,
  car_id: 11
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 1058.04,
  fifth: 1624.56,
  total: 2682.61,
  car_id: 11
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 191.86,
  second: 558.13,
  third: 943.18,
  fourth: 1936.00,
  fifth: 2783.92,
  total: 6413.09,
  car_id: 11
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 14462.99,
  second: 3582.21,
  third: 2927.48,
  fourth: 3280.33,
  fifth: 2867.11,
  total: 27120.11,
  car_id: 11
})

car12 = Car.find_or_create_by!({
  year: "2018",
  make: "Volkswagen",
  model: "Atlas",
  condition: 'new'
})

Price.create!({
  vehicle_price: 35690.00,
  freight_delivery: 1795.00,
  total_price: 37485.00,
  car_id: 12
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/volkswagen/2018-volkswagen-atlas-trendline_2.png",
  car_id: 12
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "80000/km, 48/Months",
  rust: "2000000/km, 144/Months",
  car_id: 12
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 10.6,
  auto_highway: 8.0,
  auto_combined: 9.2,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 12
})

FuelPrice.create({
  first: 2985.17,
  second: 3075.06,
  third: 3167.64,
  fourth: 2887.23,
  fifth: 3359.49,
  total: 15848.91,
  car_id: 12
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 1584.39,
  total: 1584.39,
  car_id: 12
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 425.30,
  second: 1128.33,
  third: 1029.05,
  fourth: 2906.01,
  fifth: 3021.40,
  total: 8510.09,
  car_id: 12
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6814.24,
  second: 3151.54,
  third: 2983.83,
  fourth: 3280.33,
  fifth: 2867.11,
  total: 27120.11,
  car_id: 12
})

car13 = Car.find_or_create_by!({
  year: "2018",
  make: "Volkswagen",
  model: "Tiguan",
  condition: 'new'
})

Price.create!({
  vehicle_price: 28925.00,
  freight_delivery: 1845.00,
  total_price: 30770.00,
  car_id: 13
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/volkswagen/2018-volkswagen-tiguan-trendline_2.png",
  car_id: 13
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "80000/km, 48/Months",
  rust: "2000000/km, 144/Months",
  car_id: 13
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 10.6,
  auto_highway: 8.7,
  auto_combined: 9.6,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 13
})

FuelPrice.create({
  first: 2985.17,
  second: 3075.06,
  third: 3167.64,
  fourth: 2887.23,
  fifth: 3359.49,
  total: 15848.91,
  car_id: 13
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 1584.39,
  total: 1584.39,
  car_id: 13
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 399.81,
  second: 1074.66,
  third: 909.64,
  fourth: 2715.50,
  fifth: 2644.39,
  total: 7744.00,
  car_id: 13
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 5947.53,
  second: 2938.21,
  third: 2781.24,
  fourth: 3261.55,
  fifth: 3089.82,
  total: 18018.36,
  car_id: 13
})

car14 = Car.find_or_create_by!({
  year: "2018",
  make: "Toyota",
  model: "Corolla",
  condition: 'new'
})

Price.create!({
  vehicle_price: 16790.00,
  freight_delivery: 1645.00,
  total_price: 18435.00,
  car_id: 14
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/toyota/2018-toyota-corolla-ce.png",
  car_id: 14
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "60000/km, 36/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 14
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 8.4,
  auto_highway: 6.5,
  auto_combined: 7.4,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 14
})

FuelPrice.create({
  first: 2240.56,
  second: 2307.64,
  third: 2376.06,
  fourth: 2447.17,
  fifth: 2520.96,
  total: 11892.39,
  car_id: 14
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 148.66,
  fourth: 360.27,
  fifth: 526.34,
  total: 1035.28,
  car_id: 14
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 60.37,
  second: 672.17,
  third: 524.59,
  fourth: 1357.75,
  fifth: 2200.31,
  total: 4815.18,
  car_id: 14
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 4862.14,
  second: 1254.44,
  third: 1187.36,
  fourth: 1391.29,
  fifth: 1317.50,
  total: 10012.73,
  car_id: 14
})

car15 = Car.find_or_create_by!({
  year: "2018",
  make: "Toyota",
  model: "Rav4",
  condition: 'new'
})

Price.create!({
  vehicle_price: 27750.00,
  freight_delivery: 1815.00,
  total_price: 29565.00,
  car_id: 15
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/toyota/2018-toyota-rav4-fwd-le.png",
  car_id: 15
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "60000/km, 36/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 15
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 10.0,
  auto_highway: 7.8,
  auto_combined: 8.8,
  manual_city: 8.6, #Null Values
  manual_highway: 6.4, #Null Values
  manual_combined: 7.39, #Null Values
  car_id: 15
})

FuelPrice.create({
  first: 2755.75,
  second: 2838.93,
  third: 2923.46,
  fourth: 3012.00,
  fifth: 3101.89,
  total: 14632.03,
  car_id: 15
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 148.66,
  fourth: 360.27,
  fifth: 526.34,
  total: 1035.28,
  car_id: 15
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 91.23,
  second: 662.78,
  third: 583.62,
  fourth: 2452.54,
  fifth: 3276.31,
  total: 7066.47,
  car_id: 15
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 8358.48,
  second: 1493.26,
  third: 1412.76,
  fourth: 1656.94,
  fifth: 1568.39,
  total: 14489.82,
  car_id: 15
})

car16 = Car.find_or_create_by!({
  year: "2018",
  make: "Subaru",
  model: "Impreza",
  condition: 'new'
})

Price.create!({
  vehicle_price: 20895.00,
  freight_delivery: 1625.00,
  total_price: 22520.00,
  car_id: 16
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/subaru/2018-subaru-impreza-convenience_1.png",
  car_id: 16
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 16
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 8.5,
  auto_highway: 6.4,
  auto_combined: 7.3,
  manual_city: 9.5,
  manual_highway: 7.0,
  manual_combined: 8.1,
  car_id: 16
})

FuelPrice.create({
  first: 2655.13,
  second: 2735.62,
  third: 2817.47,
  fourth: 2901.99,
  fifth: 2989.20,
  total: 14099.40,
  car_id: 16
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 183.48,
  fourth: 437.95,
  fifth: 644.20,
  total: 1265.63,
  car_id: 16
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 605.08,
  second: 1289.33,
  third: 764.74,
  fourth: 3248.13,
  fifth: 1412.76,
  total: 7320.04,
  car_id: 16
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 3535.25,
  second: 1681.09,
  third: 1591.20,
  fourth: 1866.24,
  fifth: 1766.95,
  total: 10440.72,
  car_id: 16
})

car17 = Car.find_or_create_by!({
  year: "2018",
  make: "Subaru",
  model: "Forester",
  condition: 'new'
})

Price.create!({
  vehicle_price: 25995.00,
  freight_delivery: 1725.00,
  total_price: 27720.00,
  car_id: 17
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/subaru/2018-subaru-forester-25i_1.png",
  car_id: 17
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 17
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.2,
  auto_highway: 7.4,
  auto_combined: 8.2,
  manual_city: 10.9,
  manual_highway: 8.3,
  manual_combined: 9.5,
  car_id: 17
})

FuelPrice.create({
  first: 2985.17,
  second: 3075.06,
  third: 3167.64,
  fourth: 3261.55,
  fifth: 3359.49,
  total: 15848.91,
  car_id: 17
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 183.48,
  fourth: 437.95,
  fifth: 644.20,
  total: 1265.63,
  car_id: 17
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 634.60,
  second: 1321.53,
  third: 796.94,
  fourth: 3486.95,
  fifth: 1475.82,
  total: 7715.83,
  car_id: 17
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 5620.17,
  second: 2396.19,
  third: 2266.05,
  fourth: 2659.15,
  fifth: 2516.94,
  total: 15458.49,
  car_id: 17
})

car18 = Car.find_or_create_by!({
  year: "2018",
  make: "Nissan",
  model: "Pathfinder",
  condition: 'new'
})

Price.create!({
  vehicle_price: 32998.00,
  freight_delivery: 1795.00,
  total_price: 34793.00,
  car_id: 18
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/nissan/2018-nissan-pathfinder-s-4x2.png",
  car_id: 18
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 18
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 11.6,
  auto_highway: 8.5,
  auto_combined: 9.9,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 18
})

FuelPrice.create({
  first: 3113.97,
  second: 3207.89,
  third: 3303.14,
  fourth: 3402.42,
  fifth: 3504.39,
  total: 16531.81,
  car_id: 18
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 148.66,
  fourth: 360.27,
  fifth: 526.34,
  total: 1035.28,
  car_id: 18
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 381.03,
  second: 758.03,
  third: 538.00,
  fourth: 1279.93,
  fifth: 2219.09,
  total: 5176.09,
  car_id: 18
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6065.60,
  second: 3131.41,
  third: 2962.36,
  fourth: 3473.53,
  fifth: 3291.07,
  total: 18923.97,
  car_id: 18
})

car19 = Car.find_or_create_by!({
  year: "2018",
  make: "Nissan",
  model: "Altima",
  condition: 'new'
})

Price.create!({
  vehicle_price: 26298.00,
  freight_delivery: 1795.00,
  total_price: 28093.00,
  car_id: 19
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/nissan/2018-nissan-altima-25-s.png",
  car_id: 19
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "60000/km, 36/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 19
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 8.8,
  auto_highway: 6.0,
  auto_combined: 7.3,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 19
})

FuelPrice.create({
  first: 2311.66,
  second: 2381.43,
  third: 2452.54,
  fourth: 2526.33,
  fifth: 2601.46,
  total: 12273.41,
  car_id: 19
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 148.66,
  fourth: 360.27,
  fifth: 526.34,
  total: 1035.28,
  car_id: 19
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 623.87,
  second: 995.50,
  third: 975.38,
  fourth: 1541.56,
  fifth: 2095.66,
  total: 6231.96,
  car_id: 19
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 12402.21,
  second: 2119.81,
  third: 2005.77,
  fourth: 2351.91,
  fifth: 2228.48,
  total: 21108.18,
  car_id: 19
})

car20 = Car.find_or_create_by!({
  year: "2018",
  make: "Chrysler",
  model: "300",
  condition: 'new'
})

Price.create!({
  vehicle_price: 41245.00,
  freight_delivery: 1895.00,
  total_price: 43140.00,
  car_id: 20
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/chrysler/2018-chrysler-300-touring.png",
  car_id: 20
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "100000/km, 60/Months",
  rust: "160000/km, 60/Months",
  car_id: 20
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 12.4,
  auto_highway: 7.8,
  auto_combined: 9.9,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 20
})

FuelPrice.create({
  first: 3113.97,
  second: 3207.89,
  third: 3303.14,
  fourth: 3402.42,
  fifth: 3504.39,
  total: 16531.81,
  car_id: 20
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 188.84,
  fourth: 448.66,
  fifth: 656.25,
  total: 1293.76,
  car_id: 20
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 216.01,
  second: 951.23,
  third: 570.20,
  fourth: 2461.93,
  fifth: 1791.10,
  total: 5990.47,
  car_id: 20
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 9277.51,
  second: 1809.89,
  third: 1713.29,
  fourth: 2009.79,
  fifth: 1903.80,
  total: 16714.28,
  car_id: 20
})

car21 = Car.find_or_create_by!({
  year: "2018",
  make: "Mitsubishi",
  model: "Outlander",
  condition: 'new'
})

Price.create!({
  vehicle_price: 28998.00,
  freight_delivery: 1700.00,
  total_price: 30698.00,
  car_id: 21
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/mitsubishi/2018-mitsubishi-outlander-es-awc_1.png",
  car_id: 21
})

Warranty.create!({
  bumper: "100000/km, 60/Months",
  powertrain: "160000/km, 120/Months",
  roadside: "Unlimited/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 21
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.9,
  auto_highway: 8.1,
  auto_combined: 8.9,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 21
})

FuelPrice.create({
  first: 2655.13,
  second: 2735.62,
  third: 2817.47,
  fourth: 2901.99,
  fifth: 2989.20,
  total: 14099.40,
  car_id: 21
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 977.69,
  total: 977.69,
  car_id: 21
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 452.14,
  second: 1262.49,
  third: 751.32,
  fourth: 3146.17,
  fifth: 4126.92,
  total: 9739.04,
  car_id: 21
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6468.09,
  second: 1835.38,
  third: 1734.75,
  fourth: 2036.62,
  fifth: 1927.95,
  total: 14002.80,
  car_id: 21
})

car22 = Car.find_or_create_by!({
  year: "2018",
  make: "Lincoln",
  model: "Continental",
  condition: 'new'
})

Price.create!({
  vehicle_price: 58150.00,
  freight_delivery: 2000.00,
  total_price: 60150.00,
  car_id: 22
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/lincoln/2018-lincoln-continental-select.png",
  car_id: 22
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "110000/km, 72/Months",
  roadside: "110000/km, 72/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 22
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 14.0,
  auto_highway: 9.4,
  auto_combined: 11.5,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 22
})

FuelPrice.create({
  first: 1791.10,
  second: 1844.77,
  third: 1899.78,
  fourth: 1957.47,
  fifth: 2016.50,
  total: 9509.62,
  car_id: 22
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 554.47,
  fifth: 849.11,
  total: 1403.58,
  car_id: 22
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 452.14,
  second: 1262.49,
  third: 751.32,
  fourth: 3146.17,
  fifth: 4126.92,
  total: 9739.04,
  car_id: 22
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6468.09,
  second: 1835.38,
  third: 1734.75,
  fourth: 2036.62,
  fifth: 1927.95,
  total: 14002.80,
  car_id: 22
})

car23 = Car.find_or_create_by!({
  year: "2018",
  make: "Lincoln",
  model: "MKZ",
  condition: 'new'
})

Price.create!({
  vehicle_price: 43050.00,
  freight_delivery: 2000.00,
  total_price: 45050.00,
  car_id: 23
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/lincoln/2018-lincoln-mkz-20l-awd.png",
  car_id: 23
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "110000/km, 72/Months",
  roadside: "110000/km, 72/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 23
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 11.8,
  auto_highway: 8.4,
  auto_combined: 11.1,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 23
})

FuelPrice.create({
  first: 1791.10,
  second: 1844.77,
  third: 1899.78,
  fourth: 1957.47,
  fifth: 2016.50,
  total: 9509.62,
  car_id: 23
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 554.47,
  fifth: 849.11,
  total: 1403.58,
  car_id: 23
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 105.99,
  second: 360.90,
  third: 261.62,
  fourth: 1458.37,
  fifth: 2534.38,
  total: 4721.27,
  car_id: 23
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 16349.35,
  second: 4897.02,
  third: 4000.80,
  fourth: 4485.14,
  fifth: 3918.96,
  total: 33651.27,
  car_id: 23
})

car24 = Car.find_or_create_by!({
  year: "2018",
  make: "Lexus",
  model: "IS 300",
  condition: 'new'
})

Price.create!({
  vehicle_price: 41050.00,
  freight_delivery: 2075.00,
  total_price: 43125.00,
  car_id: 24
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/lexus/2018-lexus-is-300-rwd.png",
  car_id: 24
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "110000/km, 72/Months",
  roadside: "Unlimited/km, 48/Months",
  rust: "Unlimited/km, 72/Months",
  car_id: 24
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 10.6,
  auto_highway: 7.3,
  auto_combined: 8.8,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 24
})

FuelPrice.create({
  first: 2948.95,
  second: 3037.50,
  third: 3128.73,
  fourth: 3222.64,
  fifth: 3319.24,
  total: 15657.06,
  car_id: 24
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 692.42,
  fifth: 1062.06,
  total: 1754.48,
  car_id: 24
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 386.40,
  second: 1404.71,
  third: 794.26,
  fourth: 4106.79,
  fifth: 4322.80,
  total: 11014.95,
  car_id: 24
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 12591.39,
  second: 4275.84,
  third: 3495.00,
  fourth: 3916.28,
  fifth: 3422.55,
  total: 27701.05,
  car_id: 24
})

car25 = Car.find_or_create_by!({
  year: "2018",
  make: "Lexus",
  model: "NX 300",
  condition: 'new'
})

Price.create!({
  vehicle_price: 44050.00,
  freight_delivery: 2075.00,
  total_price: 46125.00,
  car_id: 25
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/lexus/2018-lexus-is-300-rwd.png",
  car_id: 25
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "110000/km, 72/Months",
  roadside: "Unlimited/km, 48/Months",
  rust: "Unlimited/km, 72/Months",
  car_id: 25
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 10.6,
  auto_highway: 8.5,
  auto_combined: 9.4,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 25
})

FuelPrice.create({
  first: 3067.01,
  second: 3159.59,
  third: 3253.50,
  fourth: 3351.44,
  fifth: 3452.07,
  total: 16283.61,
  car_id: 25
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 692.42,
  fifth: 1062.06,
  total: 1754.48,
  car_id: 25
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 407.86,
  second: 1377.87,
  third: 913.66,
  fourth: 3159.59,
  fifth: 3564.76,
  total: 9423.75,
  car_id: 25
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 12591.39,
  second: 4275.84,
  third: 3495.00,
  fourth: 3916.28,
  fifth: 3422.55,
  total: 27701.05,
  car_id: 25
})

car26 = Car.find_or_create_by!({
  year: "2018",
  make: "Lexus",
  model: "ES 350",
  condition: 'new'
})

Price.create!({
  vehicle_price: 43950.00,
  freight_delivery: 2075.00,
  total_price: 46025.00,
  car_id: 26
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/lexus/2018-lexus-es-350.png",
  car_id: 26
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "110000/km, 72/Months",
  roadside: "80000/km, 48/Months",
  rust: "Unlimited/km, 72/Months",
  car_id: 26
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 11.4,
  auto_highway: 7.7,
  auto_combined: 10.5,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 26
})

FuelPrice.create({
  first: 2985.17,
  second: 3075.06,
  third: 3167.64,
  fourth: 3261.55,
  fifth: 3359.49,
  total: 15848.91,
  car_id: 26
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 574.56,
  fifth: 881.26,
  total: 1455.81,
  car_id: 26
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 339.44,
  second: 1277.25,
  third: 744.62,
  fourth: 1832.69,
  fifth: 3850.54,
  total: 8044.53,
  car_id: 26
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 8287.37,
  second: 5126.44,
  third: 4185.95,
  fourth: 4693.09,
  fifth: 4101.42,
  total: 26394.28,
  car_id: 26
})

car27 = Car.find_or_create_by!({
  year: "2018",
  make: "Lexus",
  model: "RX 350",
  condition: 'new'
})

Price.create!({
  vehicle_price: 56500.00,
  freight_delivery: 2045.00,
  total_price: 58545.00,
  car_id: 27
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/lexus/2018-lexus-rx-350.png",
  car_id: 27
})

Warranty.create!({
  bumper: "80000/km, 48/Months",
  powertrain: "110000/km, 72/Months",
  roadside: "Unlimited/km, 48/Months",
  rust: "Unlimited/km, 72/Months",
  car_id: 27
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 12.2,
  auto_highway: 9.0,
  auto_combined: 10.44,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 27
})

FuelPrice.create({
  first: 3113.97,
  second: 3207.89,
  third: 3303.14,
  fourth: 3402.42,
  fifth: 3504.39,
  total: 16531.81,
  car_id: 27
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 574.56,
  fifth: 881.26,
  total: 1455.81,
  car_id: 27
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 367.61,
  second: 1304.08,
  third: 810.36,
  fourth: 3116.65,
  fifth: 4015.56,
  total: 9614.26,
  car_id: 27
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6787.41,
  second: 6879.98,
  third: 5618.83,
  fourth: 6300.39,
  fifth: 5503.45,
  total: 31090.06,
  car_id: 27
})

car28 = Car.find_or_create_by!({
  year: "2018",
  make: "Chevrolet",
  model: "Equinox",
  condition: 'new'
})

Price.create!({
  vehicle_price: 25195.00,
  freight_delivery: 1795.00,
  total_price: 26990.00,
  car_id: 28
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/chevrolet/2018-chevrolet-equinox-ls-fwd_2.png",
  car_id: 28
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "160000/km, 60/Months",
  roadside: "160000/km, 60/Months",
  rust: "160000/km, 72/Months",
  car_id: 28
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 12.2,
  auto_highway: 9.0,
  auto_combined: 10.44,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 28
})

FuelPrice.create({
  first: 2559.87,
  second: 2636.34,
  third: 2715.50,
  fourth: 2797.34,
  fifth: 2881.86,
  total: 13590.91,
  car_id: 28
})

Repair.create({
  first: 116.52,
  second: 704.47,
  third: 997.77,
  fourth: 2634.39,
  fifth: 2681.27,
  total: 7134.42,
  car_id: 28
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 116.72,
  second: 705.71,
  third: 999.53,
  fourth: 2639.03,
  fifth: 2685.98,
  total: 7146.97,
  car_id: 28
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 7914.39,
  second: 2267.39,
  third: 2146.64,
  fourth: 2516.94,
  fifth: 2382.77,
  total: 17228.13,
  car_id: 28
})

car29 = Car.find_or_create_by!({
  year: "2018",
  make: "Kia",
  model: "Optima",
  condition: 'new'
})

Price.create!({
  vehicle_price: 23995.00,
  freight_delivery: 1560.00,
  total_price: 25555.00,
  car_id: 29
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/kia/2018-kia-optima-lx-at.png",
  car_id: 29
})

Warranty.create!({
  bumper: "100000/km, 60/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "100000/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 29
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.6,
  auto_highway: 6.8,
  auto_combined: 8.0,
  manual_city: 10.9, #null
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 29
})

FuelPrice.create({
  first: 2469.98,
  second: 2543.77,
  third: 2620.24,
  fourth: 2698.06,
  fifth: 2779.90,
  total: 13111.95,
  car_id: 29
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 897.33,
  total: 897.33,
  car_id: 29
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 507.14,
  second: 906.96,
  third: 637.28,
  fourth: 1520.09,
  fifth: 2037.97,
  total: 5609.44,
  car_id: 29
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 10038.23,
  second: 1931.98,
  third: 1828.67,
  fourth: 2142.62,
  fifth: 2029.92,
  total: 17971.40,
  car_id: 29
})

car30 = Car.find_or_create_by!({
  year: "2018",
  make: "Kia",
  model: "Forte",
  condition: 'new'
})

Price.create!({
  vehicle_price: 15495.00,
  freight_delivery: 1560.00,
  total_price: 17055.00,
  car_id: 30
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/kia/2018-kia-forte-lx_1.png",
  car_id: 30
})

Warranty.create!({
  bumper: "100000/km, 60/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "100000/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 30
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 7.9,
  auto_highway: 6.3,
  auto_combined: 7.0,
  manual_city: 9.4,
  manual_highway: 6.8,
  manual_combined: 8.0,
  car_id: 30
})

FuelPrice.create({
  first: 2559.87,
  second: 2636.34,
  third: 2715.50,
  fourth: 2797.34,
  fifth: 2881.86,
  total: 13590.91,
  car_id: 30
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 897.33,
  total: 897.33,
  car_id: 30
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 482.99,
  second: 834.51,
  third: 610.45,
  fourth: 1318.84,
  fifth: 1995.03,
  total: 5241.83,
  car_id: 30
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6564.69,
  second: 1783.05,
  third: 1686.45,
  fourth: 1978.93,
  fifth: 1872.94,
  total: 13886.08,
  car_id: 30
})

car31 = Car.find_or_create_by!({
  year: "2018",
  make: "Kia",
  model: "Sorento",
  condition: 'new'
})

Price.create!({
  vehicle_price: 27995.00,
  freight_delivery: 1785.00,
  total_price: 29780.00,
  car_id: 31
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/kia/2018-kia-sorento-lx.png",
  car_id: 31
})

Warranty.create!({
  bumper: "100000/km, 60/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "100000/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 31
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 11.2,
  auto_highway: 6.3,
  auto_combined: 8.5,
  manual_city: 9.4, #null
  manual_highway: 6.8, #null
  manual_combined: 8.0, #null
  car_id: 31
})

FuelPrice.create({
  first: 2985.17,
  second: 3075.06,
  third: 3167.64,
  fourth: 3261.55,
  fifth: 3359.49,
  total: 15848.91,
  car_id: 31
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 897.33,
  total: 897.33,
  car_id: 31
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 548.73,
  second: 869.39,
  third: 705.71,
  fourth: 1428.86,
  fifth: 2908.70,
  total: 6461.39,
  car_id: 31
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 8151.87,
  second: 2086.27,
  third: 1973.57,
  fourth: 2314.35,
  fifth: 2193.60,
  total: 16719.64,
  car_id: 31
})

car32 = Car.find_or_create_by!({
  year: "2018",
  make: "Chevrolet",
  model: "Impala",
  condition: 'new'
})

Price.create!({
  vehicle_price: 31045.00,
  freight_delivery: 1750.00,
  total_price: 32795.00,
  car_id: 32
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/chevrolet/2018-chevrolet-impala-ls-1ls.png",
  car_id: 32
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "160000/km, 60/Months",
  roadside: "160000/km, 60/Months",
  rust: "160000/km, 72/Months",
  car_id: 32
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 10.9,
  auto_highway: 7.9,
  auto_combined: 9.3,
  manual_city: 8.6, #null
  manual_highway: 5.8, #null
  manual_combined: 8.3, #null
  car_id: 32
})

FuelPrice.create({
  first: 2865.76,
  second: 2951.63,
  third: 3040.18,
  fourth: 3131.41,
  fifth: 3225.33,
  total: 15214.31,
  car_id: 32
})

Repair.create({
  first: 57.59,
  second: 705.81,
  third: 938.95,
  fourth: 1580.55,
  fifth: 2851.68,
  total: 6134.66,
  car_id: 32
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 57.69,
  second: 707.05,
  third: 940.50,
  fourth: 1583.15,
  fifth: 2856.37,
  total: 6144.76,
  car_id: 32
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 14829.26,
  second: 1513.38,
  third: 1431.54,
  fourth: 1679.75,
  fifth: 1591.20,
  total: 21045.12,
  car_id: 32
})

car33 = Car.find_or_create_by!({
  year: "2018",
  make: "Kia",
  model: "Soul",
  condition: 'new'
})

Price.create!({
  vehicle_price: 20095.00,
  freight_delivery: 1785.00,
  total_price: 21880.00,
  car_id: 33
})

Picture.create!({
  url: "https://picolio.auto123.com/19photo/kia/2019-kia-soul-lx.png",
  car_id: 33
})

Warranty.create!({
  bumper: "100000/km, 60/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "100000/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 33
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.4,
  auto_highway: 7.8,
  auto_combined: 8.5,
  manual_city: 9.4, #null
  manual_highway: 6.8, #null
  manual_combined: 8.0, #null
  car_id: 33
})

FuelPrice.create({
  first: 2655.13,
  second: 2735.62,
  third: 2817.47,
  fourth: 2901.99,
  fifth: 2989.20,
  total: 14099.40,
  car_id: 33
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 897.33,
  total: 897.33,
  car_id: 33
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 754.01,
  second: 1049.17,
  third: 937.81,
  fourth: 1548.26,
  fifth: 2326.42,
  total: 6615.68,
  car_id: 33
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6360.76,
  second: 1211.51,
  third: 1145.77,
  fourth: 1344.33,
  fifth: 1274.57,
  total: 11336.94,
  car_id: 33
})

car34 = Car.find_or_create_by!({
  year: "2018",
  make: "Hyundai",
  model: "Elantra",
  condition: 'new'
})

Price.create!({
  vehicle_price: 15999.00,
  freight_delivery: 1705.00,
  total_price: 17704.00,
  car_id: 34
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/hyundai/2018-hyundai-elantra-l_1.png",
  car_id: 34
})

Warranty.create!({
  bumper: "100000/km, 60/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 34
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.4, #null
  auto_highway: 7.8, #null
  auto_combined: 8.5, #null
  manual_city: 9.8,
  manual_highway: 7.0,
  manual_combined: 8.3,
  car_id: 34
})

FuelPrice.create({
  first: 2469.98,
  second: 2543.77,
  third: 2620.24,
  fourth: 2698.06,
  fifth: 2779.90,
  total: 13111.95,
  car_id: 34
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 897.33,
  total: 897.33,
  car_id: 34
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 406.52,
  second: 666.80,
  third: 520.56,
  fourth: 1065.27,
  fifth: 1931.98,
  total: 4591.13,
  car_id: 34
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 3485.61,
  second: 1597.91,
  third: 1512.04,
  fourth: 1773.66,
  fifth: 1679.75,
  total: 10048.96,
  car_id: 34
})

car35 = Car.find_or_create_by!({
  year: "2018",
  make: "Hyundai",
  model: "Sonata",
  condition: 'new'
})

Price.create!({
  vehicle_price: 24799.00,
  freight_delivery: 1805.00,
  total_price: 26604.00,
  car_id: 35
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/hyundai/2018-hyundai-sonata-gl_1.png",
  car_id: 35
})

Warranty.create!({
  bumper: "100000/km, 60/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 35
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.8,
  auto_highway: 6.9,
  auto_combined: 8.2,
  manual_city: 9.4, #null
  manual_highway: 6.8, #null
  manual_combined: 8.0, #null
  car_id: 35
})

FuelPrice.create({
  first: 2469.98,
  second: 2543.77,
  third: 2620.24,
  fourth: 2698.06,
  fifth: 2779.90,
  total: 13111.95,
  car_id: 35
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 897.33,
  total: 897.33,
  car_id: 35
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 450.79,
  second: 736.57,
  third: 580.93,
  fourth: 1330.92,
  fifth: 2579.99,
  total: 5679.20,
  car_id: 35
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 3947.13,
  second: 2229.82,
  third: 2109.07,
  fourth: 2474.00,
  fifth: 2343.86,
  total: 13103.90,
  car_id: 35
})

car36 = Car.find_or_create_by!({
  year: "2018",
  make: "Honda",
  model: "Civic",
  condition: 'new'
})

Price.create!({
  vehicle_price: 20090.00,
  freight_delivery: 1655.00,
  total_price: 21745.00,
  car_id: 36
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/honda/2018-honda-civic-lx_1.png",
  car_id: 36
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 36
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.8, #null
  auto_highway: 6.9, #null
  auto_combined: 8.2, #null
  manual_city: 8.5,
  manual_highway: 6.1,
  manual_combined: 7.2,
  car_id: 36
})

FuelPrice.create({
  first: 2240.56,
  second: 2307.64,
  third: 2376.06,
  fourth: 2447.17,
  fifth: 2520.96,
  total: 11892.39,
  car_id: 36
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 148.68,
  fourth: 360.31,
  fifth: 526.40,
  total: 1035.39,
  car_id: 36
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 217.35,
  second: 892.20,
  third: 637.28,
  fourth: 1541.56,
  fifth: 1726.70,
  total: 5015.09,
  car_id: 36
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 3439.99,
  second: 2110.42,
  third: 1995.03,
  fourth: 2341.18,
  fifth: 2975.44,
  total: 12104.37,
  car_id: 36
})

car37 = Car.find_or_create_by!({
  year: "2018",
  make: "Honda",
  model: "Accord",
  condition: 'new'
})

Price.create!({
  vehicle_price: 26590.00,
  freight_delivery: 1695.00,
  total_price: 28285.00,
  car_id: 37
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/honda/2018-honda-accord-lx_1.png",
  car_id: 37
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 37
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 7.9,
  auto_highway: 6.3,
  auto_combined: 7.0,
  manual_city: 8.9,
  manual_highway: 6.7,
  manual_combined: 7.7,
  car_id: 37
})

FuelPrice.create({
  first: 2173.47,
  second: 2237.87,
  third: 2304.95,
  fourth: 2374.72,
  fifth: 2445.83,
  total: 11536.85,
  car_id: 37
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 178.15,
  fourth: 425.94,
  fifth: 624.18,
  total: 1228.27,
  car_id: 37
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 221.37,
  second: 849.26,
  third: 630.58,
  fourth: 1478.50,
  fifth: 2063.46,
  total: 5243.17,
  car_id: 37
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6921.57,
  second: 2169.45,
  third: 2052.72,
  fourth: 2406.92,
  fifth: 2282.15,
  total: 15832.81,
  car_id: 37
})

car38 = Car.find_or_create_by!({
  year: "2018",
  make: "Ford",
  model: "Fusion",
  condition: 'new'
})

Price.create!({
  vehicle_price: 23988.00,
  freight_delivery: 1750.00,
  total_price: 25738.00,
  car_id: 38
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/ford/2018-ford-fusion-s.png",
  car_id: 38
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "100000/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 38
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 11.3,
  auto_highway: 7.4,
  auto_combined: 9.2,
  manual_city: 9.4, #null
  manual_highway: 6.8, #null
  manual_combined: 8.0, #null
  car_id: 38
})

FuelPrice.create({
  first: 2865.76,
  second: 2951.63,
  third: 3040.18,
  fourth: 3131.41,
  fifth: 3225.33,
  total: 15214.31,
  car_id: 38
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 171.45,
  fourth: 411.21,
  fifth: 601.41,
  total: 1184.07,
  car_id: 38
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 368.95,
  second: 1023.68,
  third: 603.74,
  fourth: 2445.83,
  fifth: 1993.69,
  total: 6435.90,
  car_id: 38
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 12564.55,
  second: 1627.42,
  third: 1538.87,
  fourth: 1807.20,
  fifth: 1710.60,
  total: 19248.65,
  car_id: 38
})

car39 = Car.find_or_create_by!({
  year: "2018",
  make: "Ford",
  model: "Fiesta",
  condition: 'new'
})

Price.create!({
  vehicle_price: 16580.00,
  freight_delivery: 1750.00,
  total_price: 18330.00,
  car_id: 39
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/ford/2018-ford-fiesta-s.png",
  car_id: 39
})

Warranty.create!({
  bumper: "50000/km, 36/Months",
  powertrain: "50000/km, 60/Months",
  roadside: "50000/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 39
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 8.6,
  auto_highway: 6.4,
  auto_combined: 7.4,
  manual_city: 8.6,
  manual_highway: 6.7,
  manual_combined: 7.5,
  car_id: 39
})

FuelPrice.create({
  first: 2388.14,
  second: 2459.24,
  third: 2533.04,
  fourth: 2609.51,
  fifth: 2687.32,
  total: 12677.25,
  car_id: 39
})

Repair.create({
  first: 0.00,
  second: 0.00,
  third: 137.96,
  fourth: 330.84,
  fifth: 483.54,
  total: 952.35,
  car_id: 39
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 500.44,
  second: 1230.29,
  third: 715.10,
  fourth: 1667.67,
  fifth: 1811.23,
  total: 5924.73,
  car_id: 39
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6015.96,
  second: 1177.97,
  third: 1113.57,
  fourth: 1306.77,
  fifth: 1238.34,
  total: 10852.61,
  car_id: 39
})

car40 = Car.find_or_create_by!({
  year: "2018",
  make: "Dodge",
  model: "Grand Caravan",
  condition: 'new'
})

Price.create!({
  vehicle_price: 30945.00,
  freight_delivery: 1895.00,
  total_price: 32840.00,
  car_id: 40
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/dodge/2018-dodge-grand-caravan-canada-value-package.png",
  car_id: 40
})

Warranty.create!({
  bumper: "60000/km, 36/Months",
  powertrain: "100000/km, 60/Months",
  roadside: "100000/km, 60/Months",
  rust: "160000/km, 60/Months",
  car_id: 40
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 13.7,
  auto_highway: 9.4,
  auto_combined: 11.3,
  manual_city: 8.6, #null
  manual_highway: 6.7, #null
  manual_combined: 7.5, #null
  car_id: 40
})

FuelPrice.create!({
  first: 3582.21,
  second: 3689.54,
  third: 3800.89,
  fourth: 3914.93,
  fifth: 4031.66,
  total: 19019.23,
  car_id: 40
})

Repair.create!({
  first: 0.00,
  second: 0.00,
  third: 188.86,
  fourth: 448.71,
  fifth: 656.33,
  total: 1293.90,
  car_id: 40
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 265.65,
  second: 1000.87,
  third: 482.99,
  fourth: 1510.70,
  fifth: 1568.39,
  total: 4828.60,
  car_id: 40
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 9217.14,
  second: 1969.54,
  third: 1864.89,
  fourth: 2186.89,
  fifth: 2072.85,
  total: 17311.31,
  car_id: 40
})

car41 = Car.find_or_create_by!({
  year: "2014",
  make: "Honda",
  model: "Civic",
  condition: 'new'
})

Price.create!({
  vehicle_price: 15791.84,
  freight_delivery: 0.00,
  total_price: 15791.84,
  car_id: 41
})

Picture.create!({
  url: "https://picolio.auto123.com/14photo/honda/2014-honda-civic-dx_2.png",
  car_id: 41
})

Warranty.create!({
  bumper: "",
  powertrain: "",
  roadside: "",
  rust: "",
  car_id: 41
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 0.00,
  auto_highway: 0.00,
  auto_combined: 0.00,
  manual_city: 7.3, 
  manual_highway: 5.5, 
  manual_combined: 6.3, 
  car_id: 41
})

FuelPrice.create!({
  first: 2147.33,
  second: 2212.48,
  third: 2278.96,
  fourth: 2346.77,
  fifth: 2417.24,
  total: 11402.78,
  car_id: 41
})

Repair.create!({
  first: 541.15,
  second: 634.23,
  third: 740.60,
  fourth: 866.91,
  fifth: 1011.84,
  total: 3794.72,
  car_id: 41
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 1023.80,
  second: 1342.91,
  third: 204.76,
  fourth: 2386.66,
  fifth: 1925.28,
  total: 6883.42,
  car_id: 41
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 3325.37,
  second: 1410.72,
  third: 1241.86,
  fourth: 1100.92,
  fifth: 987.90,
  total: 8066.77,
  car_id: 41
})

car42 = Car.find_or_create_by!({
  year: "2014",
  make: "Toyota",
  model: "Corolla",
  condition: 'new'
})

Price.create!({
  vehicle_price: 14561.94,
  freight_delivery: 0.00,
  total_price: 14561.94,
  car_id: 42
})

Picture.create!({
  url: "https://picolio.auto123.com/14photo/toyota/2014-toyota-corolla-ce_1.png",
  car_id: 42
})

Warranty.create!({
  bumper: "",
  powertrain: "",
  roadside: "",
  rust: "",
  car_id: 42
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 7,4,
  auto_highway: 5.4,
  auto_combined: 6.3,
  manual_city: 7.1, 
  manual_highway: 5.2, 
  manual_combined: 6.0, 
  car_id: 42
})

FuelPrice.create!({
  first: 0.00,
  second: 0.00,
  third: 0.00,
  fourth: 0.00,
  fifth: 0.00,
  total: 0.00,
  car_id: 42
})

Repair.create!({
  first: 541.15,
  second: 634.23,
  third: 740.60,
  fourth: 866.91,
  fifth: 1011.84,
  total: 3794.72,
  car_id: 42
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 1474.54,
  second: 977.27,
  third: 394.90,
  fourth: 2027.66,
  fifth: 2478.40,
  total: 7352.77,
  car_id: 42
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 3320.05,
  second: 1192.66,
  third: 1050.40,
  fourth: 930.73,
  fifth: 835.00,
  total: 7328.84,
  car_id: 42
})