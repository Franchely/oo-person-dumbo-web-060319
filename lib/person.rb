require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account 
    

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        if value <0
            @happiness = 0
        elsif
            value >10
            @happiness = 10
        else 
            @happiness = value            
        end
    end

    def hygiene=(value)
        if value <0
            @hygiene = 0
        elsif
            value >10
            @hygiene = 10
        else 
            @hygiene = value            
        end
    end

    def happy?
        if @happiness >7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene >7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene+=4
        self.hygiene=(@hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        @hygiene-=3
        self.hygiene=(@hygiene)
        @happiness+=2
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(instance)
        self.happiness=(@happiness+=3)
        instance.happiness=(instance.happiness+3)
        "Hi #{instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness-2)
            person.happiness=(person.happiness-2)
            
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness+1)
            person.happiness=(person.happiness+1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"

        end
    end
    
end