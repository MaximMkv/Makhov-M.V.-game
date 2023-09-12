items = ["stone", "scissors", "paper"]

#input and verifying of user's choice
def enterData(items)
    print"Please enter item's name: "
    item = gets.chomp.downcase

    if items.include?(item)
        return item
    else puts"You entered wrong name of item. Try stone, scissors or paper"
        enterData(items)
    end
end

#choosing the winner
def results(i1, i2)
    if i1==i2 
        puts"Draw"
    elsif(i1=="scissors"&&i2=="paper")||(i1=="stone"&&i2=="scissors")||(i1="paper"&&i2=="stone")
        puts"User1 win!"
    else puts"User2 win!"
    end
end

item1=enterData(items)
item2=enterData(items)
results(item1, item2)

