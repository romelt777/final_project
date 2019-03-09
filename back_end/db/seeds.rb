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
  make: "Mitsubishi",
  model: "Outlander",
  condition: 'new'
})

Price.create!({
  vehicle_price: 28998.00,
  freight_delivery: 1700.00,
  total_price: 30698.00,
  car_id: 20
})

Picture.create!({
  url: "https://picolio.auto123.com/18photo/mitsubishi/2018-mitsubishi-outlander-es-awc_1.png",
  car_id: 20
})

Warranty.create!({
  bumper: "100000/km, 60/Months",
  powertrain: "160000/km, 120/Months",
  roadside: "Unlimited/km, 60/Months",
  rust: "Unlimited/km, 60/Months",
  car_id: 20
})

# city*0.45 + hwy*0.55
Fuel.create!({
  auto_city: 9.9,
  auto_highway: 8.1,
  auto_combined: 8.9,
  manual_city: 10.9, #null 
  manual_highway: 8.3, #null
  manual_combined: 9.5, #null
  car_id: 20
})

# 1CAD = 0.752USD
Maintenance.create!({
  first: 452.14,
  second: 1262.49,
  third: 751.32,
  fourth: 3146.17,
  fifth: 4126.92,
  total: 9739.04,
  car_id: 20
})

# 1CAD = 0.752USD
Depreciation.create!({
  first: 6468.09,
  second: 1835.38,
  third: 1734.75,
  fourth: 2036.62,
  fifth: 1927.95,
  total: 14002.80,
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
  model: "IS",
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
  model: "NX",
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