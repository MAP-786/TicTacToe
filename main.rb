module TicTacToe
    
 
    class Game 
        @@Locations = ["1","2","3","4","5","6","7","8","9"]
        @@j= 0
        @@gamefin = false
        @@p1wins = false
        @@p2wins = false
        def initialize()
            displayboard()
        end 

        def displayboard()
            for i in 0..8 do
                if (i == 0 || i == 1)
                    print @@Locations[i] + " | "
                elsif(i== 2)
                    puts @@Locations[i]
                    puts "---------"
                elsif(i == 3 || i == 4)
                    print @@Locations[i] + " | "
                elsif(i== 5)
                    puts @@Locations[i]
                    puts "---------"
                elsif(i == 6 || i == 7)
                    print @@Locations[i] + " | "
                elsif(i== 8)
                    puts @@Locations[i]
                end
            end
            if @@gamefin == false
                inputmove()
            else
                if @@p1wins == true
                    puts " "
                    puts "Player 1 wins"
                    puts " "
                elsif @@p2wins == true
                    puts ""
                    puts "Player 2 wins"
                    puts " "
                else
                    puts " "
                    puts "Its a tie!"
                    puts " "
                end
                newgame()
            end
        end 
        

        def inputmove()
            if (@@j < 9)
                if (@@j.modulo(2) == 0)
                    puts " "
                    print "Player 1 choose your next move from the empty spots (indicated by available numbers): "
                    position = gets
                    position = position.to_i
                    @@Locations[position-1] = Player1.symbol
                    puts " "
                end
                if(@@j.modulo(2) != 0)
                    puts " "
                    print "Player 2 choose your next move from the empty spots (indicated by available numbers): "
                    position = gets
                    position = position.to_i
                    @@Locations[position-1] = Player2.symbol
                    puts " "
                end
                @@j= @@j + 1
                checkresult()
            end
        end 

        def checkresult()
            if @@Locations[0] == "X" && @@Locations[1]== "X" && @@Locations[2] == "X"
                @@p1wins=true
                @@gamefin = true
                displayboard()
            elsif @@Locations[3] == "X" && @@Locations[4] == "X" && @@Locations[5] == "X"
                @@p1wins=true
                @@gamefin = true
                displayboard()
            elsif @@Locations[6] == "X" && @@Locations[7] == "X" && @@Locations[8] == "X"
                @@p1wins=true
                @@gamefin = true
                displayboard()
            elsif @@Locations[0] == "X" && @@Locations[3] == "X" && @@Locations[6] == "X"
                @@p1wins=true
                @@gamefin = true
                displayboard()
            elsif @@Locations[1] == "X" && @@Locations[4] == "X" && @@Locations[7] == "X"
                @@p1wins=true
                @@gamefin = true
                displayboard()
            elsif @@Locations[2] == "X" && @@Locations[5] == "X" && @@Locations[8] == "X"
                @@p1wins=true
                @@gamefin = true
                displayboard()
            elsif @@Locations[0] == "X" && @@Locations[4] == "X" && @@Locations[8] == "X"
                @@p1wins=true
                @@gamefin = true
                displayboard()
            elsif @@Locations[2] == "X" && @@Locations[4] == "X" && @@Locations[6] == "X"
                @@p1wins=true
                @@gamefin = true
                displayboard()
            elsif @@Locations[0] == "O" && @@Locations[1]== "O" && @@Locations[2] == "O"
                @@p2wins = true
                @@gamefin = true
                displayboard()
            elsif @@Locations[3] == "O" && @@Locations[4] == "O" && @@Locations[5] == "O"
                @@p2wins = true
                @@gamefin = true
                displayboard()
            elsif @@Locations[6] == "O" && @@Locations[7] == "O" && @@Locations[8] == "O"
                @@p2wins = true
                @@gamefin = true
                displayboard()
            elsif @@Locations[0] == "O" && @@Locations[3] == "O" && @@Locations[6] == "O"
                @@p2wins = true
                @@gamefin = true
                displayboard()
            elsif @@Locations[1] == "O" && @@Locations[4] == "O" && @@Locations[7] == "O"
                @@p2wins = true
                @@gamefin = true
                displayboard()
            elsif @@Locations[2] == "O" && @@Locations[5] == "O" && @@Locations[8] == "O"
                @@p2wins = true
                @@gamefin = true
                displayboard()
            elsif @@Locations[0] == "O" && @@Locations[4] == "O" && @@Locations[8] == "O"
                @@p2wins = true
                @@gamefin = true
                displayboard()
            elsif @@Locations[2] == "O" && @@Locations[4] == "O" && @@Locations[6] == "O"
                @@p2wins = true
                @@gamefin = true
                displayboard()
            elsif @@j == 9
                @@gamefin = true
                displayboard()
            else 
                displayboard()
            end 
        end   
        
        def newgame()
            print "If you want to play another game enter Y, if you want to quit please enter Q: "
            entry = gets.chomp
            if entry == "Y" || entry == "y"
                @@Locations = ["1","2","3","4","5","6","7","8","9"]
                @@j = 0
                @@gamefin = false
                @@p1wins = false
                @@p2wins = false
                puts " "
                displayboard()
            else
                puts " "
                puts "End of game" 
            end 
        end 
    end 

    class Player 
        attr_accessor :symbol
        def initialize(symbol)
            @symbol = symbol
        end
    end

end 



Player1 = TicTacToe::Player.new("X")
Player2 = TicTacToe::Player.new("O")
Game1 = TicTacToe::Game.new

