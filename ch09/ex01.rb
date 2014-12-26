#!/usr/bin/env ruby
# ex01.rb
# 2014-01-03
# Exercise 9-1
# Define a class to represent at television.
#

class Television
    def initialize(volume = 0, power = false, channel = 1)
	puts "Created a new television class!"
	@vol = volume
	@power = power
	@chan = channel
    end

    # Toggle power button
    def pow()
	@power = !@power
    end

    # Volume controls
    def set_vol(volume)
	if volume >= 0 and volume < 11
	    @vol = volume
	end
    end

    def mute()
	@vol = 0
    end

    def vol_up()
	if @vol < 10
	    @vol += 1
	end
    end

    def vol_down()
	if @vol > 0
	    @vol -= 1
	end
    end

   # Channel control 
   def set_chan(channel)
       if channel > 0 and channel < 101
	   @chan = channel
       end
   end

   def ch_up()
       if @chan < 100
	   @chan += 1
       end
   end

   def ch_down()
       if @chan > 1
	   @chan -= 1
       end
   end

   def display()
       status = "on"
       if @power == false
	   status = "off"
       end
       puts "Power: " + status 
       puts "Volume: " + @vol.to_s
       puts "Channel: " + @chan.to_s
       puts ""
   end
end # end Television class

my_tv = Television.new()

my_tv.display()

my_tv.pow()
my_tv.display()
my_tv.vol_up()
my_tv.display()
my_tv.ch_up()
my_tv.display()
my_tv.set_vol(5)
my_tv.display()
my_tv.mute()
my_tv.display()
my_tv.set_chan(44)
my_tv.display()
