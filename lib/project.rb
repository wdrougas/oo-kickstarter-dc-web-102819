require_relative "backer.rb"
require 'pry'
class Project
    attr_reader :title, :backers

    @@all = []

    def initialize(title)
        @title = title
        @backers = []
        @@all << self
    end

    def self.all 
        @@all
    end

    def add_backer(backer)
        backer.backed_projects << self
        @backers << backer
    end
end