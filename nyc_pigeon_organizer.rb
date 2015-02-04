require "pry"

def nyc_pigeon_organizer(data)
  birdhash = {}
  pigeon_list = data.each do |pigeonhash,stat|
    #pigeonhash = :color :gender :lives  stat = purple :male :subway
    stat.each do | attribute, birdname|
     #attribute = purple,male, subway   birdname = ["theo", "peter"]
      birdname.each do |bird|
        if birdhash[bird] == nil
          birdhash[bird] = {}
        end
        if birdhash[bird][pigeonhash] == nil
          birdhash[bird][pigeonhash] = []
        end
        birdhash[bird][pigeonhash] << attribute.to_s
        # binding.pry
      end
     # binding.pry
    end 
  end
  birdhash
end