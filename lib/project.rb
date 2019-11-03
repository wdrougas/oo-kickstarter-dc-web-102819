require 'pry'
require_relative "./backer.rb"
require_relative "./backer_projects.rb"

class Project

    attr_reader :title, :backers
    #@@all = []

    def initialize(title)
        @title = title
        #@@all << self
        @backers = []
    end

    # def self.all
    #      @@all
    # end

    def add_backer(backer)
       BackerProjects.new(self, backer)
        self.backers << backer
        #self.backers << backer
    end

end