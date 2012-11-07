# encoding: utf-8
class Hero
	attr_accessor :name, :hp, :helmet, :breastplate, :trousers, :gloves, :boots, :weapon
	def initialize( name, hp=100, helmet=0, breastplate=0, trousers=0, gloves=0, boots=0, weapon=20 )
		@name = name
		@hp = hp
		@helmet = helmet
		@breastplate = breastplate
		@trousers = trousers
		@gloves = gloves
		@boots = boots
		@weapon = weapon
		end
	def hit(damage, target)	
		target.hp -= damage-armor_value
	end
	
	def hitpoints
		hp
	end
	
	def alive?
		hp > 0
	end
	
	def armor_value
		helmet.to_i + breastplate.to_i + trousers.to_i + boots.to_i + gloves.to_i
	end
	
	def to_s
		"Name: #{@name}  Armor Value: #{armor_value} Hit Points: #{hp}"
	end
	
end

class Enemy
	attr_accessor :name, :hp, :helmet, :breastplate, :trousers, :gloves, :boots, :weapon
	def initialize( name, hp=100, helmet=0, breastplate=0, trousers=0, gloves=0, boots=0, weapon=20 )
		@name = name
		@hp = hp
		@helmet = helmet
		@breastplate = breastplate
		@trousers = trousers
		@gloves = gloves
		@boots = boots
		@weapon = weapon
		end
	def hit(damage, target)
		target.hp -= damage-armor_value
	end
	
	def hitpoints
		hp
	end
	
	def alive?
		hp > 0
	end
	
	def armor_value
		helmet.to_i + breastplate.to_i + trousers.to_i + boots.to_i + gloves.to_i
	end
	
	def to_s
		"Name: #{@name}  Armor Value: #{armor_value} Hit Points: #{hp}"
	end
	
end

if __FILE__ == $0 then

	josh=Hero.new('josh')

	josh.helmet=17
	puts josh.helmet
	puts josh.armor_value
end

## create a `weapon` attribute (Integer too)
## create an Enemy class, similar to the Hero class
## subtract the armor from the damage in the hit method




