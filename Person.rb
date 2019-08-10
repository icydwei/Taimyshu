require_relative './Shoes.rb'
require 'pry'

class Person

    attr_reader :name
    @@all_people = []

    def initialize (name)
        @name = name
        @@all_people << self
    end

    def self.all_people
        @@all_people
    end

    def buy_shoes(shoes)
        shoes.owner = self
    end
    
    def go_run(kicks)
        #binding.pry
        if kicks.lace_status != Shoes.lace_statuses(1)
            kicks.lace_status = Shoes.lace_statuses(1)
            kicks.freshness -= 5
        else
            puts "Can't go for a run! Need to Lace em up!"
        end
    end

    def lace_em_up(kicks)
        if kicks.lace_status == Shoes.lace_statuses(1)
            kicks.lace_status = Shoes.lace_statuses(0)
        else
            puts "Kicks already laced, you're good to go!"
        end
    end

    def shoes
        #binding.pry
        Shoes.all_shoes.select do |kicks|
            kicks.owner == self
        end
    end
            
    def myshoes?(kicks)
        self.shoes.include?(kicks)
    end
    
    def shoe_status(kicks)
        if myshoes?(kicks)
            puts "Shoe name: #{kicks.name}"
            puts "Lace status: #{kicks.lace_status}"
            print "Freshness level: #{kicks.freshness}"
        else
            print "You don't own those kicks!"
        end
    end
    
    def clean_shoes(kicks)
        if myshoes?(kicks)
            puts "Showed #{kicks.name} some lovin'!"
            kicks.lace_status = Shoes.lace_statuses(1)
            kicks.freshness += 5
        else
            print "You don't own those kicks!"
        end
    end

end