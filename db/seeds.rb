Gym.destroy_all
Event.destroy_all

Gym.create([
{:name => "Yoga Lab Miami", :address => "401 NW 26th St, Miami,FL 33127", :phone_number => "(305)555-5555", :price_in_cents => "50"},
{:name => "Love Life Yoga", :address => "32 NW 30th St, Miami,FL 33127", :phone_number =>"(305)522-9163", :price_in_cents =>"80"},
{:name => "Wynwood Yoga",  :address => "48 NW 25th St, Miami,FL 33127", :phone_number =>"(305)522-9163", :price_in_cents =>"80"},
{:name => "Sol Yoga",     :address =>"584 NW 26th St, Miami,FL 33127", :phone_number =>"(786)-558-9390", :price_in_cents =>"70"},
{:name => "Sanatura Yoga Miami", :address =>"65 NW 24th St, Miami,FL 33127", :phone_number =>"(305)522-9163", :price_in_cents =>"80"},
{:name => "Ultralight Beam Yoga", :address => "2370 N Federal Hwy, Fort Lauderdale, FL 33305", :phone_number =>"(954)563-0488", :price_in_cents =>"65"},
{:name => "Bombay Room Yoga", :address => "2038 NE 18th St, Fort Lauderdale, FL 33305", :phone_number =>"(954)675-0897", :price_in_cents =>"85"},
{:name => "RiverFront Yoga", :address => "508 SW Flagler Ave, Fort Lauderdale, FL 33305", :phone_number =>"(954)432-2345", :price_in_cents =>"44"},
{:name => "Hot Yoga", :address => "1921 NE 26th St, Fort Lauderdale, FL 33305", :phone_number =>"(954)321-6789", :price_in_cents =>"70"},
{:name => "Yoga Path Palm Beach", :address => "4514 S Dixie Hwy, West Palm Beach, FL 33405", :phone_number =>"(561)678-0000", :price_in_cents =>"90"},
{:name => "Bindu Yoga Studio", :address => "5808 S Dixie Hwy, West Palm Beach, FL 33405", :phone_number =>"(561)233-9882", :price_in_cents =>"60"},
{:name => "24hr Fitness Gym", :address =>"2520 NW 2nd Ave, Miami, FL 33127", :phone_number =>"(305)-547-7895", :price_in_cents =>"40"},
{:name => "Gold's Gym", :address =>"143 NW 23rd St, Miami,FL 33127", :phone_number =>"(305)888-9078", :price_in_cents =>"30"},
{:name => "Bodytek Wynwood", :address => "547 NW 28th St, Miami,FL 33127", :phone_number =>"(305)823-2957", :price_in_cents =>"60"},
{:name => "La Fitness Gym", :address =>"56 NW 23rd St, Miami,FL 33127", :phone_number =>"(305)234-0965", :price_in_cents =>"25"},
{:name => "Rock Solid Gym", :address => "251 NW 25th St, Miami,FL 33127", :phone_number =>"(305)678-8097", :price_in_cents =>"50"},
{:name => "Planet Fitness Gym", :address => "2055 NW 2nd Ave, Miami,FL 33127", :phone_number =>"(305)433-0922", :price_in_cents =>"30"},
{:name => "Ultimate Performance Gym", :address => "2449 Wilton Dr, Wilton Manors, FL 33305", :phone_number =>"(954)563-0123", :price_in_cents =>"45"},
{:name => "Winner's Circle Gym", :address => "2200 N Ocean Blvd, Fort Lauderdale, FL 33305", :phone_number =>"(945)779-0222", :price_in_cents =>"77"},
{:name => "Power Gym", :address =>"2415 N Federal Hwy, Fort Lauderdale, FL 33305", :phone_number =>"(954)657-2345", :price_in_cents =>"30"},
{:name => "Bodytek Ft lauderdale", :address =>"2197 N Ocean Blvd, Fort Lauderdale, FL 33305", :phone_number => "(954)890-2321", :price_in_cents =>"40"},
{:name => "Hybrid Performance Gym", :address => "2400 N federal Hwy, Fort Lauderdale, FL 33305", :phone_number =>"(954)-234-0987", :price_in_cents =>"80"},
{:name => "West Fit center Gym", :address => "632 Hibiscus St, West Palm Beach,FL 33401", :phone_number =>"(561)784-0985", :price_in_cents =>"35"},
{:name => "West Dixie Gym", :address => "1700 S Dixie Hwy, West Palm Beach, FL 33401", :phone_number => "(561)345-1209", :price_in_cents =>"10"},
{:name => "Bodytek West Palm", :address => "125 Datura St, West Palm Beach, FL 33401", :phone_number =>"(561)823-2957", :price_in_cents =>"60"},
{:name => "MMA Top Team", :address =>"7480 SW 40th St, Miami, FL 33155", :phone_number =>"(305)798-5732", :price_in_cents =>"60"},
{:name => "MMA/BJJ", :address => "1717 N Bayshore Dr, Miami, FL 33132", :phone_number =>"(305)829-9484", :price_in_cents =>"100"},
{:name => "KO ZONE MMA", :address => "515 NW 36th St, Miami, FL 33127", :phone_number =>"(786)587-1949", :price_in_cents =>"60"},
{:name => "WynMMA", :address => "3401 N Miami Ave, Miami, FL 33127", :phone_number =>"(305)823-2957", :price_in_cents =>"120"},
{:name => "Combat Sports MMA", :address => "1611 NW 12th Ave, Miami, FL 33136", :phone_number =>"(305)845-2987", :price_in_cents =>"80"},
{:name => "MMA MASTERS", :address =>"3100 NW 5 Ave, Miami,FL 33127", :phone_number =>"(305)573-7229", :price_in_cents =>"90"},
{:name => "Fight MMA", :address => "200 NW 36th St, Miami, FL 33127", :phone_number =>"(305)438-2844", :price_in_cents =>"100"},
{:name => "Budokon Academy MMA", :address => "1911 NW Miami Ct, Miami, FL 33136", :phone_number =>"(305)438-2957", :price_in_cents =>"120"},
{:name => "Gladiator sports fitness MMA", :address => "1747 N Federal Hwy, Fort Lauderdale, FL 33305", :phone_number =>"(954)576-1051", :price_in_cents =>"100"},
{:name => "Evolution MMA West", :address => "1901 N Federal Hwy, Fort Lauderdale, FL 33305", :phone_number =>"(945)573-0371", :price_in_cents =>"50"},
{:name => "Teknica MMA", :address => "301 N Olive Ave, West Palm Beach, FL 33401", :phone_number =>"(561)823-2789", :price_in_cents =>"60"},
{:name => "Academy of  MMA", :address => "316 Banyan Blvd, West Palm Beach, FL 33401", :phone_number =>"(561)823-2957", :price_in_cents =>"60"},
{:name => "Gorilla GGP MMA", :address => "225 Clematis St, West Palm Beach, FL 33401", :phone_number =>"(561)800-2957", :price_in_cents =>"60"},
{:name => "Renzo's Legacy MMA School", :address => "213 Clematis St, West Palm Beach, FL 33401", :phone_number =>"(561)856-2957", :price_in_cents =>"60"},
{:name => "Super Cycling", :address =>"410 NW 36th St, Miami, FL 33127", :phone_number =>"(305)-573-0608", :price_in_cents =>"85"},
{:name => "Sol Cycling", :address =>"300 NW 36th St, Miami, FL 33127", :phone_number =>"(305)204-0022", :price_in_cents =>"100"},
{:name => "Cyclingwood", :address => "515 NW 36th St, Miami, FL 33127", :phone_number =>"(786) 587-1949", :price_in_cents =>"70" },
{:name => "Miami Cycling", :address => "56 NE 29th St, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "Fitbox method Cycling", :address => "3299 NW 2nd Ave, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "Wynwheels indoor Cycling", :address => "5580 NE 4th Ct Suite 6, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"120"},
{:name => "Flywheel Sports Cycling", :address => "56 NE 29th St, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "RedBike Cycling", :address => "764 NW 29th St, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "Element Aqua Cylcing", :address => "3004 NW 2nd Ave, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "M Cycle Gym", :address => "1150 NW 29th St, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "RPM Indoor Cycling", :address => "2545 N Miami Ave, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "VirtuRide", :address => "63 NW 28th St, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "Cycle Zone", :address => "555 NW 29th St, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "NuShape Studio Cycling", :address => "301 NW 22nd St, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
{:name => "Body & Soul Cycling", :address => "218 NW 25th St, Miami, FL 33127", :phone_number =>"(786)534-5334", :price_in_cents =>"80"},
])

class_types = ["Karate", "Yoga","MMA","Cycling","Gym","Ballet"]
(1..12).to_a.each do |month|
  (1..28).to_a.each do |day|
    (10..15).to_a.each do |time|
      Event.create(:name => class_types.sample, class_size: rand(8..15), event_start: DateTime.parse("2019-#{month}-#{day} #{time}:00") , event_end: DateTime.parse("2019-#{month}-#{day} #{time}:00") + 2.hours, gym_id: Gym.all.ids.sample )
      end
  end
end

puts "seed completed"
