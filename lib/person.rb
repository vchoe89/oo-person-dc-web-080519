# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account, :happiness
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        
        @name = name
        @bank_account = 25    
        @happiness = 8
        @hygiene = 8
        
    
    end

def happiness=(level)
   
    if level > 10
        @happiness = 10
    elsif
        level < 0
        @happiness = 0
    else
        @happiness = level
    end
end


def hygiene=(level)
    if level > 10
        @hygiene = 10
    elsif
        level < 0
        @hygiene = 0
    else
        @hygiene = level
    end
end

def happy?
    if @happiness > 7
        return true
    else
        return false
    end
end

def clean?
    if @hygiene > 7
        return true
    else
        return false
    end
end

def get_paid(cash)
    @bank_account += cash
    return "all about the benjamins"
end

def take_bath
   
    new_num = self.hygiene + 4
    self.hygiene = new_num
    return "♪ Rub-a-dub just relaxing in the tub ♫"

end

def work_out
    dirty_var = self.hygiene - 3
    self.hygiene = dirty_var
    happy_var = self.happiness + 2
    self.happiness = happy_var

    return "♪ another one bites the dust ♫"
end

def call_friend(friend)
    
    self.happiness += 3
    # conv_var = self.happiness + 3
    # self.happiness = conv_var
    friend.happiness += 3
    # friend_var = friend.happiness + 3
    # friend.happiness = friend_var
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
   
end

def start_conversation(person, topic)
    
    if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
        
    end

    

end



# return "Hi Felix! It's Stella. How are you?"











end


hannah = Person.new("Hannah")
victor = Person.new("Victor")


