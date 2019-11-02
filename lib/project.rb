require_relative "backer.rb"
require 'pry'
class Project
    attr_reader :title, :backers

    @@all = []

    def initialize(title)
        @title = title
        #@backers = []
        @@all << self
    end

    def self.all 
        @@all
    end

    def view_backers
        BackerProjects.all.select do |projectTeam|
            projectTeam.backer == self
        end.map do |investor|
            investor.project
        end.each do |backer|
            puts "#{backer.name} has invested into #{self.title}."
        end
    end
end