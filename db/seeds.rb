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
  'West Hempstead'
]

lines.each do |line|
  Line.create(name: line)
end
# towns = ['Woodside','Forest Hills','Kew Gardens','Flatbush Ave','Nostrand Ave','East New York','Jamacia','Long Island City',Hunterspoint Ave,Long Island City,Wooside,Shea Stadium,Flushing Main St,Murrary Hill,Broadway,Auburndale,Bayside,Douglaston,Little Neck,Great Neck,Manhasset,Plandome,Port Washington,Holis,Queens Village,Bellerose,Floral Park,Stewart Manor,Nassau Blvd,Garden City,Country Life Press,Hempstead,Lynbrook,Centre Ave,East Rockaway,Oceanside,Island Park,Long Beach,Locust Manor,Laurelton,Laurelton,Valley Stream,Gibson,Hewlett,Woodmere,Cedarhurst,Lawrence,Inwood,Far Rockaway,Rockville Centre,Baldwin,Freeport,Merrick,Bellmore,Wantagh,Seaford,Massapequa,Massapequa Park,Amityville,Copiague,Lindenhurst,Babylon,St.Albans,Westwood,Malverne,Lakeview,Hempstead Gardens,West Hempstead,Bethpage,Babylon,Babylon,Bay Shore,Islip,Great River,Oakdale,Sayville,Patchogue,Bellport,Mastic-Shirley,Speonk,Westhampton,Hampton Bays,Southhampton,Bridgehampton,East Hampton,Amagansett,Montauk,Hicksville,Bethpage,Farmingdale,Pinelawn,Wyandanch,Deer Park,Brentwood,Central Islip,Ronkonkoma,Medford,Yaphank,Riverhead,Mattituck,Southold,Greenport,Queens Village,New Hyde Park,Merillon Ave,Mineola,Carle Place,Westbury,Hicksville,Syosset,Cold Spring Harbor,Huntington,Greenlawn,Northport,Kings Park,Smithtown,St. James,Stony Brook,Port Jefferson,Mineola,East Williston,Albertson,Rosyln,Greenvale,Glen Head,Sea Cliff,Glen St,Glen Cove,Locust Valley,Oyster Bay];