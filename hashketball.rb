require_relative "player.rb"
require_relative  "team.rb"
require "pry"

def game_hash
hsh =  {
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
  return hsh
end



def num_points_scored(name)
  x = game_hash
  @home_team = build_team(x, :home)
  @away_team = build_team(x, :away)
  #binding.pry
  @home_team.players.each do |player|
    if (player.get_name == name)

      return player.get_pts
    end
  end

  @away_team.players.each do |player|
    if (player.get_name == name)
      #binding.pry
      return player.get_pts
    end
  end
end

def shoe_size(name)
  x = game_hash
  @home_team = build_team(x, :home)
  @away_team = build_team(x, :away)

  @home_team.players.each do |player|
    if (player.get_name == name)
      #binding.pry
      return player.get_shoe
    end
  end

  @away_team.players.each do |player|
    if (player.get_name == name)
      #binding.pry
      return player.get_shoe
    end
  end
end

def team_colors(name)
  x = game_hash
  @home_team = build_team(x, :home)
  @away_team = build_team(x, :away)
  #binding.pry
  return @home_team.get_name == name ? @home_team.get_colors : @away_team.get_colors
end

def team_names
  x = game_hash
  @home_team = build_team(x, :home)
  @away_team = build_team(x, :away)
  arr = []
  arr[0] = @home_team.get_name
  arr[1] =  @away_team.get_name

  return  arr

end

def player_numbers(name)
  x = game_hash
  @home_team = build_team(x, :home)
  @away_team = build_team(x, :away)

  numbers = []
  if(name == @home_team.get_name)
    @home_team.players.each do |player|
      numbers.push(player.get_num)
    end
    return numbers
  end

      @away_team.players.each do |player|
        numbers.push(player.get_num)
      end
      return numbers

end

def player_stats(name)
  x = game_hash
  @home_team = build_team(x, :home)
  @away_team = build_team(x, :away)
  hsh = {}

  @home_team.players.each do |player|
    if (player.get_name == name)
      hsh = {:assists => player.get_ass, :blocks => player.get_blocks, :number => player.get_num, :player_name => player.get_name, :points => player.get_pts, :rebounds => player.get_rebs, :shoe => player.get_shoe, :slam_dunks => player.get_dunks, :steals => player.get_steals}
      #binding.pry
      return hsh
    end
  end

  @away_team.players.each do |player|
    if (player.get_name == name)
      hsh = {:assists => player.get_ass, :blocks => player.get_blocks, :number => player.get_num, :player_name => player.get_name, :points => player.get_pts, :rebounds => player.get_rebs, :shoe => player.get_shoe, :slam_dunks => player.get_dunks, :steals => player.get_steals}

      return hsh
    end
  end
end

def big_shoe_rebounds
  x = game_hash
  @home_team = build_team(x, :home)
  @away_team = build_team(x, :away)

  big = @home_team.players[0]
  @home_team.players.each do |player|
    if (player.get_shoe > big.get_shoe)
      big = player
    end
  end

  @away_team.players.each do |player|
    if (player.get_shoe > big.get_shoe)
      big = player
    end
  end
  return big.get_rebs
end

def build_team(hash, key)

  home_team = Team.new(hash[key][:team_name], key.to_s == "home", hash[key][:colors], nil)
  home_players = []

  hash[key][:players].each do |hsh|
	   home_players.push(Player.new(hsh[:player_name],hsh[:number],hsh[:shoe],hsh[:points],hsh[:rebounds],hsh[:assists],hsh[:steals],hsh[:blocks],hsh[:slam_dunks]))
   end

   home_team.players = home_players
   #binding.pry
   return home_team
end

x = game_hash
@home_team = build_team(x, :home)
@away_team = build_team(x, :away)

#puts num_points_scored("Jeff Adrien")

# Write code here
