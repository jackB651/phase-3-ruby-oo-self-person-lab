# your code goes here
require "pry"
class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account
    def initialize (name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness= (happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
           @happiness = happiness 
        end
    end
    def hygiene= (hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
           @hygiene = hygiene 
        end
    end
    def happy?
        if happiness > 7
            true
        else 
            false
      end
    end
    def clean?
        if hygiene > 7
            true
        else 
            false
      end
    end
    def get_paid (amount)
       @bank_account = bank_account + amount
        "all about the benjamins"
    end
    def take_bath
        @hygiene = @hygiene + 4

        if @hygiene > 10
            @hygiene  = 10    
      else
           @hygiene = @hygiene       
      end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
end