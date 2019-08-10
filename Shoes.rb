require_relative './Person.rb'
require 'pry'

class Shoes

    @@all_shoes = []
    @@lace_statuses = ["tied", "untied"]

    attr_accessor :owner, :status, :lace_status
    attr_reader :name, :freshness

    def initialize (name)
        @name = name
        @lace_status = @@lace_statuses[0]
        @freshness = 10
        @@all_shoes << self
    end

    def freshness=(level)
        #binding.pry
        if level > 10
            puts "Fresh to def!"
            @freshness = 10
        elsif level <= 0
            puts "Need new kicks!"
            @freshness = 0
        else
            @freshness = level
        end
    end

    def self.all_shoes
        @@all_shoes
    end

    def self.lace_statuses(index)
        @@lace_statuses[index]
    end



end