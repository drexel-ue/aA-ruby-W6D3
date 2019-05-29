require_relative 'employee'

class Manager < Employee

    attr_reader :name, :title, :salary
    attr_accessor :employees, :boss

    def initialize(name, salary, title, boss)
        super(name, salary, title, boss)
        @employees = []
    end

    def bonus(multiplyer)
        sum_salary * multiplyer
    end
    
    def sum_salary 
        sum = 0
        @employees.each do |employee|
            if employee.is_a?(Manager)
                sum += employee.salary
                sum += employee.sum_salary
            else  
                sum += employee.salary
            end
        end
       sum 
    end

end

ned = Manager.new("Ned", 1000000, 'Founder', nil)
darren = Manager.new("Darren", 78000,'TA Manager', ned)
ned.employees << darren
david = Employee.new('David', 10000,'TA', darren)
shawna = Employee.new("Shawna",	12000, 'TA', darren)
darren.employees += [shawna, david]

p ned.bonus(3)