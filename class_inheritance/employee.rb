class Employee
    attr_reader :salary
    attr_accessor :boss
    def initialize(name, salary, title, boss)
        @name, @title, @salary, @boss = name, title, salary, boss
    end

    def bonus(multiplyer)
        @salary * multiplyer
    end

end