RSpec.describe "Tic Tac Toe" do
    it "can get a board" do
        board = create_board
    
        expect(board.length).to eq 3
        expect(board[0].length).to eq 3
    end
    
    it "can find an open move" do
        board = create_board
        expect(is_valid_move(board, 0, 0)).to eq true
    end
    
    it "can find an invalid move" do
        board = create_board
        board[0][0] = "X"
        expect(is_valid_move(board, 0, 0)).to eq false
    end
    
    it "can make a move" do
        board = create_board
        
        new_board = make_move(board, 0, 0, "X")
        expect(new_board[0][0]).to eq "X"
    end
    
    it "should keep track of turns" do
        board = create_board
        
        expect(whos_turn(board)).to eq 'X'
    end
    
    it "should not let a player make multiple moves" do
        board = create_board
        board = make_move(board, 2, 2, "X")
        board = make_move(board, 0, 1, "X")
        puts "HERERE: ", board

        expect(board[0][1]).to eq ""
    end
end

def whos_turn(board)
    xs = 0
    os = 0
    
    board.each do |row|
        row.each do |value|
            xs += 1 if value == "X"
            os += 1 if value == "O"
        end
    end
    
    if xs > os
        "O"
    else
        "X"
    end
end

def make_move(board,x,y,player)
   move = is_valid_move(board,x,y)
   if move 
       board[x][y] = player
   end
end


def is_valid_move(board, outer_index, inner_index)
    inner_arr = board[outer_index] # ["", "", ""]
    return inner_arr[inner_index] == "" 
end

def create_board
    # Array<Array<String>>
    board = []
    board.push ["", "", ""]
    board.push ["", "", ""]
    board.push ["", "", ""]
    
    return board
end



