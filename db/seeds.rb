# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lines = [
  'City Terminal Zone',
  'Babylon',
  'Far Rockaway',
  'Hempstead',
  'Long Beach',
  'Montauk',
  'Oyster Bay',
  'Port Jefferson',
  'Port Washington',
  'Ronkonkoma',
  'West Hempstead',
  'Main Line'
]

towns = [
  {town: "Atlantic Terminal", line: "City Terminal Zone"},
  {town: "East New York", line: "City Terminal Zone"},
  {town: "Nostrand Ave", line: "City Terminal Zone"},
  {town: "Laurelton", line: "Far Rockaway"},
  {town: "Locust Manor", line: "Far Rockaway"},
  {town: "Rosedale", line: "Far Rockaway"},
  {town: "Valley Stream", line: "Far Rockaway"},

  # BELMONT PARK
  {town: "Cedarhurst", line: "Far Rockaway"},
  {town: "Far Rockaway", line: "Far Rockaway"},
  {town: "Gibson", line: "Far Rockaway"},
  {town: "Hewlett", line: "Far Rockaway"},
  {town: "Inwood", line: "Far Rockaway"},
  {town: "Lawrence", line: "Far Rockaway"},
  {town: "Woodmere", line: "Far Rockaway"},
  
  {town: "Bellerose", line: "Hempstead"},
  {town: "Country Life Press", line: "Hempstead"},
  {town: "Garden City", line: "Hempstead"},
  {town: "Hempstead", line: "Hempstead"},
  {town: "Nassau Blvd", line: "Hempstead"},
  {town: "Stewart Manor", line: "Hempstead"},

  {town: "Centre Ave", line: "Long Beach"},
  {town: "East Rockaway", line: "Long Beach"},
  {town: "Island Park", line: "Long Beach"},
  {town: "Long Beach", line: "Long Beach"},
  {town: "Oceanside", line: "Long Beach"},


  {town: "Hicksville", line: "Main Line"},
  {town: "Hillside Facility", line: "Main Line"},
  {town: "Mineola", line: "Main Line"},
  {town: "Forest Hills", line: "City Terminal Zone", line2: "Main Line"},
  {town: "Hunterspoint Ave", line: "City Terminal Zone", line2: "Main Line"},
  {town: "Kew Gardens", line: "City Terminal Zone", line2: "Main Line"},
  {town: "Penn Station", line: "City Terminal Zone", line2: "Main Line"},
  {town: "Wooside", line: "City Terminal Zone", line2: "Main Line"},
  {town: "Holis", line: "Hempstead", line2: "Main Line"},
  {town: "Queens Village", line: "Hempstead", line2: "Main Line"},
  {town: "Carle Place", line: "Port Jefferson", line2: "Main Line"},
  {town: "Merillon Ave", line: "Port Jefferson", line2: "Main Line"},
  {town: "New Hyde Park", line: "Port Jefferson", line2: "Main Line"},
  {town: "Westbury", line: "Port Jefferson", line2: "Main Line"},
  
  # DOUBLE CHECK FLORAL PARK
  {town: "Floral Park", line: "Hempstead", line2: "Port Jefferson"},

  {town: "Bethpage", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Brentwood", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Central Islip", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Deer Park", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Farmingdale", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Greenport", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Mattituck", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Medford", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Pinelawn", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Riverhead", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Ronkonkoma", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Southold", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Wyandanch", line: "Ronkonkoma", line2: "Main Line"},
  {town: "Yaphank", line: "Ronkonkoma", line2: "Main Line"},

  {town: "Long Island City", line: "City Terminal Zone", line2: "Montauk", line3: "Main Line"},
  {town: "Jamacia", line: "City Terminal Zone", line2: "Montauk", line3: "Main Line"},

  # MONTAULK
  {town: "Amagansett", line: "Montauk"},
  {town: "Bay Shore", line: "Montauk"},
  {town: "Bellport", line: "Montauk"},
  {town: "Bridgehampton", line: "Montauk"},
  {town: "East Hampton", line: "Montauk"},
  {town: "Great River", line: "Montauk"},
  {town: "Hampton Bays", line: "Montauk"},
  {town: "Islip", line: "Montauk"},
  {town: "Mastic-Shirley", line: "Montauk"},
  {town: "Montauk", line: "Montauk"},
  {town: "Oakdale", line: "Montauk"},
  {town: "Patchogue", line: "Montauk"},
  {town: "Sayville", line: "Montauk"},
  {town: "Southhampton", line: "Montauk"},
  {town: "Speonk", line: "Montauk"},
  {town: "Westhampton", line: "Montauk"},

  # BABYLON
  {town: "Amityville", line: "Babylon", line2: "Montauk"},
  {town: "Babylon", line: "Babylon", line2: "Montauk"},
  {town: "Baldwin", line: "Babylon", line2: "Montauk"},
  {town: "Bellmore", line: "Babylon", line2: "Montauk"},
  {town: "Copiague", line: "Babylon", line2: "Montauk"},
  {town: "Freeport", line: "Babylon", line2: "Montauk"},
  {town: "Lindenhurst", line: "Babylon", line2: "Montauk"},
  {town: "Massapequa", line: "Babylon", line2: "Montauk"},
  {town: "Massapequa Park", line: "Babylon", line2: "Montauk"},
  {town: "Merrick", line: "Babylon", line2: "Montauk"},
  {town: "Rockville Centre", line: "Babylon", line2: "Montauk"},
  {town: "Seaford", line: "Babylon", line2: "Montauk"},
  {town: "Wantagh", line: "Babylon", line2: "Montauk"},
  {town: "Lynbrook", line: "Babylon", line2: "Montauk", line3: "Long Beach"},

  {town: "St.Albans", line: "Montauk", line2: "West Hempstead"},

  # OYSTER BAY
  {town: "Albertson", line: "Oyster Bay"},
  {town: "East Williston", line: "Oyster Bay"},
  {town: "Glen Cove", line: "Oyster Bay"},
  {town: "Glen Head", line: "Oyster Bay"},
  {town: "Glen St", line: "Oyster Bay"},
  {town: "Greenvale", line: "Oyster Bay"},
  {town: "Locust Valley", line: "Oyster Bay"},
  {town: "Oyster Bay", line: "Oyster Bay"},
  {town: "Rosyln", line: "Oyster Bay"},
  {town: "Sea Cliff", line: "Oyster Bay"},
  
  # PORT JEFFERSON
  {town: "Cold Spring Harbor", line: "Port Jefferson"},
  {town: "Greenlawn", line: "Port Jefferson"},
  {town: "Huntington", line: "Port Jefferson"},
  {town: "Kings Park", line: "Port Jefferson"},
  {town: "Northport", line: "Port Jefferson"},
  {town: "Port Jefferson", line: "Port Jefferson"},
  {town: "St. James", line: "Port Jefferson"},
  {town: "Smithtown", line: "Port Jefferson"},
  {town: "Stony Brook", line: "Port Jefferson"},
  {town: "Syosset", line: "Port Jefferson"},

  # PORT WASHINGTON
  {town: "Auburndale", line: "Port Washington"},
  {town: "Bayside", line: "Port Washington"},
  {town: "Broadway", line: "Port Washington"},
  {town: "Douglaston", line: "Port Washington"},
  {town: "Flushing Main St", line: "Port Washington"},
  {town: "Great Neck", line: "Port Washington"},
  {town: "Little Neck", line: "Port Washington"},
  {town: "Manhasset", line: "Port Washington"},
  {town: "Mets - Willets Point", line: "Port Washington"},
  {town: "Murrary Hill", line: "Port Washington"},
  {town: "Plandome", line: "Port Washington"},
  {town: "Port Washington", line: "Port Washington"},

  # WEST HEMPSTEAD
  {town: "Hempstead Gardens", line: "West Hempstead"},
  {town: "Lakeview", line: "West Hempstead"},
  {town: "Malverne", line: "West Hempstead"},
  {town: "West Hempstead", line: "West Hempstead"},
  {town: "Westwood", line: "West Hempstead"},

]



lines.each do |line|
  Line.create(name: line)
end

towns.sort!{|a, b| a[:town] <=> b[:town]}
towns.each do |town_iteration|
  # print town_iteration
  town = Town.new(name: town_iteration[:town])
  town.save! 
  line = Line.where(name: town_iteration[:line])[0]
  p town.name
  p line.name
  print "======================"
  Hub.create(line_id: line.id, town_id: town.id)

  unless town_iteration[:line2].nil?
    line = Line.where(name: town_iteration[:line2])[0]
    Hub.create(line_id: line.id, town_id: town.id)
  end

  unless town_iteration[:line3].nil?
    line = Line.where(name: town_iteration[:line3])[0]
    Hub.create(line_id: line.id, town_id: town.id)
  end

end