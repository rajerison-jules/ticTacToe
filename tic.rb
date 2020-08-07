class Board

	def initialize 

		@board = Array.new(3) {Array.new(3)} #defini un tableau qui a Trois tableau qui a 3 element
        
	end

	def position
        
		print "ligne  |>> "
		@pos_x = gets.chomp.to_i
        print "col    |>> "
		@pos_y = gets.chomp.to_i

		
	end

	def place

		position
		# pour enlever la position 0
		@x = @pos_x - 1 
		@y = @pos_y - 1

		if (@x < 3 && @y < 3) #pour que l'utilisateur ne choisi pas un chiffre sup 3

		@board[@x][@y] = "ok"

		# boucle pour fabriquer 3 ligne
		@board.each do |row| 

			# boucle pour fabriquer 3 cellule
			row.each do |cell|

				cell.nil? ? print("|   |") : Board_case.new.gamer(1)

			end
   
			puts #pour un a la ligne  
            
		end

		else
			
			puts "choisi un nombre entre 1 et 3"

		end
		
		
	end
 def winner

 	def vertical 

 	  vertical = []
 	  3.times do |i|
 	  	vertical << [@board[i][0],@board[i][2],@board[i][2]]
 	  end
 	  vertical
 	end
 	
 end


end

class Board_case 

  def initialize

  	@case 

  end
  
  def gamer(gamer)
  	@gamer = gamer
  	
  		@case = print "| X |" if gamer == 1
  	
  		@case = print "| O |" if gamer == 2


  	
  end

  
end



testa = Board.new

testa.place