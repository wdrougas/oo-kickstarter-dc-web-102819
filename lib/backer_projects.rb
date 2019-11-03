require_relative "./backer.rb"
require_relative "./project.rb"
require "pry"

class BackerProjects
    @@all = []

    attr_reader :backer, :project

    def initialize(backer, project)
        @backer = backer
        @project = project
        @@all << self
    end

    def self.all
        @@all
    end


end