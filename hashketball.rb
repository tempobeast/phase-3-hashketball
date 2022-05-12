# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def num_points_scored (selected_player)
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  all_players = home_players + away_players
  player_hash = all_players.find { |player_hash| player_hash[:player_name] == selected_player}
   player_hash[:points]
end

def shoe_size (selected_player)
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  all_players = home_players + away_players
  player_hash = all_players.find { |player_hash| player_hash[:player_name] == selected_player }
  player_hash[:shoe]
end

def team_colors (selected_team)
  home_team = game_hash[:home]
  away_team = game_hash[:away]
  both_teams = []
  both_teams.push(home_team, away_team)
  colors_of_team = both_teams.find { |team_hash| team_hash[:team_name] == selected_team}
  colors_of_team[:colors]
end

def team_names 
  home_team = game_hash[:home][:team_name]
  away_team = game_hash[:away][:team_name]
  both_teams = []
  both_teams.push(home_team, away_team)
end

def player_numbers (selected_team)
  home_team = game_hash[:home][:team_name]
  away_team = game_hash[:away][:team_name]
  home_numbers = []
  game_hash[:home][:players].map { |player_hash| home_numbers.push(player_hash[:number])}
  away_numbers = []
  game_hash[:away][:players].map { |player_hash| away_numbers.push(player_hash[:number])}
  if selected_team == home_team
    home_numbers
  else 
    away_numbers
  end
end

def player_stats (selected_player)
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  all_players = home_players + away_players
  player_hash = all_players.find { |player_hash| player_hash[:player_name] == selected_player}
   player_hash
end

def big_shoe_rebounds 
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  all_players = home_players + away_players
  all_shoes = []
  all_players.map { |athlete| all_shoes.push(athlete[:shoe])}
  biggest_shoe = all_shoes.max
  shoe_rebounder = all_players.find { |athlete| athlete[:shoe] == biggest_shoe}
  shoe_rebounder[:rebounds]
end

def most_points_scored
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  all_players = home_players + away_players
  all_points = []
  all_players.map { |athlete| all_points.push(athlete[:points])}
  puts all_points
end