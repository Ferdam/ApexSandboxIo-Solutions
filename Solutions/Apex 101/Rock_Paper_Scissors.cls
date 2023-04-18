public Integer rockPaperScissors(String player1, String player2) {
 Map<String, String> mapFigureWins = new Map<String, String> {
 'rock' => 'scissors',
 'paper' => 'rock',
 'scissors' => 'paper'
 };
 
 if (mapFigureWins.get(player1) == player2) return 1;
 if (mapFigureWins.get(player2) == player1) return 2;
 return 0;
}