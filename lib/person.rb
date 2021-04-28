# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name

        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary

        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4

        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2

        self.hygiene = @hygiene - 3

        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness = friend.happiness + 3

        self.happiness = self.happiness + 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(coversee, topic)
        if topic == "politics"
            coversee.happiness = coversee.happiness - 2

            self.happiness = self.happiness - 2

            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            coversee.happiness = coversee.happiness + 1

            self.happiness = self.happiness + 1

            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
# end