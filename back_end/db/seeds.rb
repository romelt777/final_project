# Car.create({
#   make: 'Mazda',
#   model: '3',
#   msrp: 16_000,
#   year: 2018,
#   condition: 'new'
# })

## References:
## https://www.auto123.com/en/new-cars/technical-specs/mazda/3/2018/base/gx/
## https://www.edmunds.com/mazda/3/2018/st-401721579/cost-to-own/

Car.create({
  year: "2018",
  make: "Mazda",
  model: "3 GX",
  msrp: 16000.00,
  condition: 'new'
})

Price.create({
  vehicle_price: 16000.00,
  freight_delivery: 1695.00,
  total_price: 19995.35
})

Picture.create({
  url: "http://picolio.auto123.com/18photo/mazda/2018-mazda-3-gx.png"
})

Warranty.create({
  bumper: "Unlimited/km, 36/Months",
  powertrain: "Unlimited/km, 60/Months",
  roadside: "Unlimited/km, 36/Months",
  rust: "Unlimited/km, 84/Months"
})

# city*0.45 + hwy*0.55
Fuel.create({
  auto_city: 8.4,
  auto_highway: 6.4,
  auto_combined: 7.3,
  manual_city: 8.5,
  manual_highway: 6.2,
  manual_combined: 7.24
})

# 1CAD = 0.752USD
Maintenance_model.create({
  first: 164.69,
  second: 333.14,
  third: 271.47,
  fourth: 539.18,
  fifth: 1166.35,
  total: 2474.83
})

# 1CAD = 0.752USD
Depreciation_model.create({
  first: 4393.18,
  second: 1141.54,
  third: 1079.12,
  fourth: 1267.12,
  fifth: 1199.44,
  total: 9080.4
})

User.create({
  id: 1,
  username: 'admin1',
  password_digest: 'foo_bar'
})