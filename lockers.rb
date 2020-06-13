class Room
    def initialize(lockers)
        @lockers = lockers
        set_locker_numbers
    end

    def set_locker_numbers
        @lockers.each_with_index do |locker, index|
            locker.number = index + 1
        end
    end

    def first_heir
        @lockers.map { |locker| locker.status = :open }
    end

    def second_heir
        @lockers.each_with_index do |locker, index|
            next if index == 0
            if (index - 1) % 2 == 0
                locker.status = :closed
            end
        end
    end

    def nth_heir(n)
        @lockers.each do |locker|
            next if locker.number == 0
            if locker.number % n == 0
                locker.status == :open ? locker.status = :closed : locker.status = :open
            end
        end
    end

    def to_s
        @lockers.each { |locker| puts "#{locker.number}: #{locker.status}" }
    end

    def take_turns
        (1..@lockers.length).each do |n|
            self.first_heir if n == 1
            self.second_heir if n == 2
            self.nth_heir(n) if n >= 3
        end
        return ""
    end

    def get_open_locker_numbers(numbers=[])
        @lockers.each do |locker|
            numbers << locker.number if locker.status == :open
        end

        numbers
    end

end

class Locker
    attr_accessor :status, :number
    
    def initialize(status=:closed, number=0)
        @status = status
        @number = number
    end
end

my_room = Room.new(Array.new(100) {Locker.new})
my_room.take_turns

p my_room.get_open_locker_numbers
#=> [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
#Solution: The open lockers at the end are all square numbers.