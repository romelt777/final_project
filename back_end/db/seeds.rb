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

User.create!({
  id: 1,
  username: 'admin1',
  email: 'admin@example.com',
  password_digest: 'foo_bar'
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
  vehicle_price: 25,900.00,
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
>>>>>>> feature/seeds
})