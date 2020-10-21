DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS crop;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  name TEXT NOT NULL,
  mobile INTEGER,
  location TEXT
);

CREATE TABLE crop (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  duration TEXT NOT NULL,
  expenditure INTEGER NOT NULL,
  water TEXT NOT NULL,
  climate TEXT NOT NULL,
  temperature TEXT NOT NULL
);

INSERT INTO crop (name, duration, expenditure, water, climate, temperature)
VALUES
  ("Brinjal", "140 – 150 days after sowing", 39166, "Water requirement – Equivalent to 600-1000 mm of rainfall.
  It cannot withstand excessive rainfall especially during flowering and fruit set", "Brinjal is a 
  warm season crop and requires a long warm growing season. It is very susceptible to frost.",
  "Requires day temperature below 35℃ and night temperature of above 16℃. 
  Temperature below 15℃ will affect the growth of the plant as well as fruit quality."),

  ("Cabbage", "90-180  days after sowing", 55450, "Water requirement – Equivalent to 350-500 mm of rainfall", 
  "Grows well in cool and moist climate. Heavy rains, cloudy weather at the time of curd 
  formation is harmful as it affects the head quality.", "High temperature leads to yellowing of heads. 
  A temperature range of 15-21°C is considered optimum for growth and curd formation of the crop."),
  
  ("Coriander", "35-40 days after sowing", 12384, "Water requirement – Equivalent to 75-100 mm of rainfall.
  Water should not be stagnated in field after emergence.", "Grows well in cool and dry weather.
  It can not tolerate frost.", "Coriander performs well at a temperature range of 20-30°C.
  High temperature reduce germination percentage and vegetative growth."),
  
  ("Maize", "100-120  days after sowing", 26017, "Crop required water equivalent to 500-800 mm of rainfall.
  Inadequate soil moisture during flowering and grain filling period will markedly reduce the yield.", 
  "Maize grows well in a wide range of climatic conditions.Essentially a warm weather crop.
  It is however susceptible to frost at all stages of its growth.", "Grows under temperature ranging from 22-30℃, 
  although it can tolerate temperature as high as 35℃."),
  
  ("Mango", "30-40 Years", 37447, "Crop required water equivalent to 900-1100 mm of rainfall.", 
  "Mango cannot stand severe frost, especially when the tree is young.Dry weather before 
  blossoming is good for profuse flowering.Rain during flowering is detrimental to the crop 
  as it interferes with pollination.", "The ideal temperature range for mango is 24-30 °C during the growing season, along with high humidity. 
  High temperature by itself is not so injurious to mango, but in combination with low humidity and high winds, it affects the tree adversely."),
  
  ("Groundnut", "110-120  days after sowing", 27073, "Water requirement- Equivalent to 600-1500 mm of rainfall.", 
  "Warm and moist conditions are very favorable.Cool and wet climate, results in slow germination and seedling emergence, 
  increasing the risk of seed rot and seedling diseases.", "The optimum temperature for most rapid germination and 
  seedling development is about 30°C.Temperatures above 35°C inhibit the growth of groundnut."),

  ("Paddy", "160 days after sowing", 14915, "Adequate and well distributed rainfall during the growing season is essential for maximum 
  yield and quality of Rice.Rice is grown in areas receiving more than 800 mm rainfall.", 
  "This crop needs hot and humid climate and it is suited for region with prolonged sunshine and plenty of water.
  More than 65 to 75 % humidity is good for rice.", "Rice crop needs an average temperature of 21 to 35°C 
  It can tolerate 40 to 42°C at the maximum."),

  ("Red Chilli", "200-220 days after sowing", 74977, "Water requirement – Equivalent to 800-1200 mm of rainfall.", 
  "Chili pepper is better adapted to hot weather than is sweet pepper.Peppers are photoperiod-insensitive 
  (daylength does not affect flowering or fruit set).", "Optimum day temperatures for chili pepper growth range from 20 to 30°C
  It does not set fruit well when night temperatures are greater than 24°C."),

  ("Potato", "100-110  days after sowing", 45000, "Water requirement – Equivalent to 500-700 mm of rainfall.", 
  "Potato is preferred in regions where temperature during growing season is cool", "The vegetative growth is best at 24 °C 
  while tuber growth at 20 °C.A temperature ranging from 20-25°C is ideal for growth."),

  ("Tomato", "70-110 days after sowing", 91897, "Crop water requirement – equivalent to 600-1500 mm rainfall.", 
  "Heavy rains, cloudy weather at the time of flowering and fruiting is harmful as it favours dropping of flowers and fruits.
  The plants cannot withstand frost and high humidity. ", "Temperature below 10°C retards plant development.
  If temperature goes beyond 33°C, fruit development will be adversely affected.");
