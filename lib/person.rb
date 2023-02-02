# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, bank_account= 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        @happiness = value.clamp(0, 10)
     end

     def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def happy? 
      @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid (amount)
        @bank_account = @bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene -3
        self.happiness = @happiness +2
        "♪ another one bites the dust ♫"
    end

    def call_friend name
        self.happiness += 3
        name.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
    if (topic == "politics")
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
    elsif(topic == "weather")
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end
    end

end


































# class Person
#     attr_reader :name
#     attr_accessor :bank_account, :happiness, :hygiene
    
#     def initialize(name)
#         @name = name
#         @bank_account = 25
#         @happiness = 8
#         @hygiene = 8
#     end
    
#     def happiness=(value) 
#         @happiness = [value, 0, 10].sort[1]
#     end

#     def hygiene=(value) 
#         @hygiene = [value, 0, 10].sort[1]
#     end
    
#     def happy?
#         if @happiness > 7
#             true
#         else
#             false
#         end
#     end

#     def clean?
#         if @hygiene > 7
#             true
#         else
#             false
#         end
#     end

#     def get_paid (amount)
#         @bank_account = @bank_account + amount
#         "all about the benjamins"
#     end

#     def take_bath
#         self.hygiene += 4 
#         "♪ Rub-a-dub just relaxing in the tub ♫"
#     end
    
#     def work_out
#         self.hygiene -= 3
#         self.happiness += 2
#         "♪ another one bites the dust ♫"
#     end

#     def call_friend name
#         self.happiness += 3
#         name.happiness += 3
#         "Hi #{name.name}! It's #{self.name}. How are you?"
#     end
#     def start_conversation(friend, topic)
#         if(topic == "politics")
#             self.happiness -= 2
#             friend.happiness -= 2
#             "blah blah partisan blah lobbyist"
#         elsif(topic == "weather")
#             self.happiness += 1
#             friend.happiness += 1
#             "blah blah sun blah rain"
#         else
#             "blah blah blah blah blah"
#         end
#         end
# end

