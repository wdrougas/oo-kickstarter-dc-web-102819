require 'pry'
require_relative "project.rb"

class Backer

   attr_reader :name, :backed_projects
    @@all = []

    def initialize(name)
        @name = name
        @backed_projects = []
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        project.add_backer(self)
        @backed_projects << project
    end


end