require_relative 'employee'

class Manager < Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

end