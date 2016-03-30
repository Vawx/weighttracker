# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
t.string   "name"
t.integer  "calories"
t.integer  "serving_size"
t.string   "server_size_measure"
t.integer  "fat_grams"
t.integer  "carbs_grams"
t.integer  "protien_grams"
t.integer  "cholesterol_milli"
t.float    "weight_grams"
t.float    "sat_fat_grams"
=end

foods_list = [
  ["1000 ISLAND",                   1, "TBSP",         6,        60    ,       2  ,       0    ,    4 ,      16    ,    1],
  ["100% NATURAL CEREAL",           1, "OZ",          6,      135        ,  18     ,    3      ,  0    ,  28.35   ,  4.1],
  ["40% BRAN FLAKES, KELLOGG'S",    1, "OZ",           1,        90     ,     22    ,     4    ,    0   ,   28.35  ,   0.1],
  ["40% BRAN FLAKES, POST",       1, "OZ",           0,        90      ,    22    ,     3      ,  0     , 28.35    , 0.1],
  ["ALFALFA SEEDS, SPROUTED, RAW",  1, "CUP",          0,        10   ,        1  ,       1  ,      0   ,    33  ,      0],
  ["ALL-BRAN CEREAL",             1, "OZ",           1   ,     70        ,  21     ,    4   ,     0   ,   28.35    , 0.1],
  ["ALMONDS, SLIVERED",             1, "CUP",         70  ,     795     ,     28    ,    27     ,   0  ,     135  ,    6.7],
  ["ALMONDS, WHOLE ",               1, "OZ",          15   ,    165    ,       6  ,       6    ,    0   ,   28.35,     1.4],
  ["ANGELFOOD CAKE, FROM MIX",      1, "CAKE",         2    ,   1510    ,     342  ,     38   ,     0    ,   635   ,   0.4],
  ["APPLE JUICE, CANNED",         1, "CUP",          0   ,    115     ,     29       ,  0     ,   0     ,  248   ,    0],
  ["APPLE PIE",                     1, "PIE",         105 ,     2420 ,        360  ,     21 ,      0   ,    945 ,     27.4],

  ["APPLESAUCE, CANNED, SWEETENED", 1, "CUP"     ,     0   ,    195     ,     51   ,      0    ,    0   ,    255   ,   0.1],
  ["APPLESAUCE, CANNED,UNSWEETENED", 1, "CUP"     ,     0   ,    105     ,     28   ,      0    ,    0   ,    244   ,    0],
  ["APPLES, DRIED, SULFURED",      10, "RINGS"  ,     0   ,    155     ,     42   ,      1    ,    0   ,    64    ,    0],
  ["APPLES, RAW, PEELED, SLICED",   1, "CUP"     ,     0   ,     65     ,     16   ,      0    ,    0   ,    110   ,   0.1],
  ['APPLES, RAW, UNPEELED,2 PER LB', 1, "APPLE"   ,     1   ,    125     ,     32   ,      0    ,    0   ,    212   ,   0.1],
  ['APRICOT NECTAR, NO ADDED VIT C', 1, "CUP"     ,     0   ,    140     ,     36   ,      1    ,    0   ,    251   ,    0],
  ['APRICOTS, CANNED, JUICE PACK ' ,1, "CUP"     ,     0   ,    120     ,     31   ,      2    ,    0   ,    248   ,    0],
  ['APRICOTS, DRIED, COOKED,UNSWTN', 1, "CUP"     ,     0   ,    210     ,     55   ,      3    ,    0   ,    250   ,    0],
  ['APRICOTS, DRIED, UNCOOKED' ,    1, "CUP"     ,     1   ,    310     ,     80   ,      5    ,    0   ,    130   ,    0],
  ['APRICOTS, RAW'  ,               3, "APRCOT"  ,     0   ,     50     ,     12   ,      1    ,    0   ,   106   ,    0],

  ['BAKING POWDER, LOW SODIUM'     , 1, 'TSP'     ,     0   ,     5       ,     1     ,    0   ,     0   ,    4.3   ,    0],
  ['BAKING POWDER, STRGHT PHOSPHAT', 1, 'TSP'     ,     0   ,     5       ,     1     ,    0   ,     0   ,    3.8   ,    0],
  ['BAKING POWDER,SAS, CA PO4'     , 1, 'TSP'     ,     0   ,     5       ,     1     ,    0   ,     0   ,     3    ,    0],
  ['BAKING POWDER,SAS,CAPO4+CASO4' , 1, 'TSP'     ,     0   ,     5       ,     1     ,    0   ,     0   ,    2.9   ,    0],
  ['BAKING PWDR BISCUITS,FROM MIX' , 1, 'BISCUT'  ,     3   ,     95      ,    14     ,    2   ,     0   ,    28    ,   0.8],
  ['BAKING PWDR BISCUITS,HOMERECPE', 1, 'BISCUT'  ,     5   ,    100      ,    13     ,    2   ,     0   ,    28    ,   1.2],
  ['BAMBOO SHOOTS, CANNED, DRAINED', 1, 'CUP'     ,     1   ,     25      ,     4     ,    2   ,     0   ,    131   ,   0.1],
  ['BANANAS'                       , 1, 'BANANA'  ,     1   ,    105      ,    27     ,    1   ,     0   ,    114   ,   0.2],
  ['BANANAS, SLICED'               , 1, 'CUP'     ,     1   ,    140      ,    35     ,    2   ,     0   ,    150   ,   0.3],
  ['BARBECUE SAUCE '               , 1, 'TBSP'    ,     0   ,     10      ,     2     ,    0   ,     0   ,    16    ,    0],
  ['BARLEY, PEARLED,LIGHT, UNCOOKD', 1, 'CUP'     ,     2   ,    700      ,    158    ,   16   ,     0   ,    200   ,   0.3],
  ['BEAN SPROUTS, MUNG, COOKD,DRAN', 1, 'CUP'     ,     0   ,     25      ,     5     ,    3   ,     0   ,    124   ,    0],

  ['BEAN SPROUTS, MUNG, RAW'        ,1, 'CUP'    ,      0   ,     30     ,      6   ,      3  ,      0   ,    104   ,    0],
  ['BEAN WITH BACON SOUP, CANNED'   ,1, 'CUP'    ,      6   ,    170     ,     23   ,      8  ,      3   ,    253   ,   1.5],
  ['BEANS,DRY,CANNED,W/FRANKFURTER' ,1, 'CUP'    ,     18   ,    365     ,     32   ,     19  ,     30   ,    255   ,   7.4],
  ['BEANS,DRY,CANNED,W/PORK+TOMSCE' ,1, 'CUP'    ,      7   ,    310     ,     48   ,     16  ,     10   ,    255   ,   2.4],
  ['BEEF AND VEGETABLE STEW,HM RCP' ,1, 'CUP'    ,     11   ,    220     ,     15   ,     16  ,     71   ,    245   ,   4.4],
  ['BEEF BROTH, BOULLN, CONSM,CNND' ,1, 'CUP'    ,      1   ,     15     ,      0   ,      3  ,      0   ,    240   ,   0.3],
  ['BEEF GRAVY, CANNED'             ,1, 'CUP'    ,      5   ,    125     ,     11   ,      9  ,      7   ,    233   ,   2.7],
  ['BEEF HEART, BRAISED'            ,3, 'OZ'     ,      5   ,    150     ,      0   ,     24  ,     164  ,    85    ,   1.2],
  ['BEEF LIVER, FRIED '             ,3, 'OZ'     ,      7   ,    185     ,      7   ,     23  ,     410  ,    85    ,   2.5],
  ['BEEF NOODLE SOUP, CANNED '      ,1, 'CUP'    ,      3   ,     85     ,      9   ,      5  ,      5   ,    244   ,   1.1],
  ['BEEF POTPIE, HOME RECIPE'       ,1, 'PIECE'  ,     30   ,    515     ,     39   ,     21  ,     42   ,    210   ,   7.9],
  ['BEEF ROAST, EYE O RND, LEAN'    ,3, 'OZ'     ,      5   ,    135     ,      0   ,     22  ,     52   ,    75    ,   1.9],
]

foods_list.each do |name, serving_size, server_size_measure, fat_grams, calories, carbs_grams, protien_grams, cholesterol_milli, weight_grams, sat_fat_grams|
  Food.create( name: name, calories: calories, serving_size: serving_size, server_size_measure: server_size_measure, fat_grams: fat_grams, carbs_grams: carbs_grams, protien_grams: protien_grams, cholesterol_milli: cholesterol_milli, weight_grams: weight_grams, sat_fat_grams: sat_fat_grams );
end
