# Write your code below game_hash

require 'pry'
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

# final_results=data.each_with_object({}) do |(key,value), final_array|
#         #binding.pry
#         value.each do |inner_key,names|
#           names.each do |name|
#             #binding.pry
#             if !final_array[name]
#               final_array[name]={}
#               #final_array<<name
#             end
#             if !final_array[name][key]
#               !final_array[name][key]=[]
#             end
#         final_array[name][key].push(inner_key.to_s)
#           end
#        end
#      end

# Write code here

def num_points_scored(player_name)

scored_points=""

    game_hash[:home][:players].each do |index|
      if index[:player_name]==player_name
        scored_points=index[:points]
      end

    end

    game_hash[:away][:players].each do |index2|
      if index2[:player_name]==player_name
        scored_points=index2[:points]
      end

    end
scored_points
#binding.pry
end

def shoe_size(player_name2)

  shoe_sizes=""

      game_hash[:home][:players].each do |index|
        if index[:player_name]==player_name2
          shoe_sizes=index[:shoe]
        end

      end


      game_hash[:away][:players].each do |index2|
        if index2[:player_name]==player_name2
          shoe_sizes=index2[:shoe]
        end
        #binding.pry
end
shoe_sizes
end

def team_colors(team_name)

team_coloring=""

if game_hash[:home][:team_name]==team_name
  team_coloring=game_hash[:home][:colors]
end

  if game_hash[:away][:team_name]==team_name
    team_coloring=game_hash[:away][:colors]
  end

team_coloring
end

def team_names
teams_playing=Array.new
  teams_playing<< game_hash[:home][:team_name]
  teams_playing<< game_hash[:away][:team_name]

end

def player_numbers(team_name)

  player_number_collection=[]

      game_hash[:home][:players].each do |index|
        if game_hash[:home][:team_name]==team_name
          player_number_collection << index[:number]
        end

      end

      game_hash[:away][:players].each do |index2|
        if game_hash[:away][:team_name]==team_name
          player_number_collection << index2[:number]
        end

      end
  player_number_collection
  #binding.pry
  end

  def player_stats(player_name)

    player_statistics=""

        game_hash[:home][:players].each do |index|
          if index[:player_name]==player_name
            player_statistics=index
          end

        end

        game_hash[:away][:players].each do |index2|
          if index2[:player_name]==player_name
            player_statistics=index2
          end

        end
    player_statistics
    #binding.pry
    end

def big_shoe_rebounds

shoe_sizes=[]
corresponding_number_of_rebounds=[]

player_statistics=""

    game_hash[:home][:players].each do |index|
      shoe_sizes<<index[:shoe]
      corresponding_number_of_rebounds<<index[:rebounds]

    end

    game_hash[:away][:players].each do |index2|
      shoe_sizes<<index2[:shoe]
      corresponding_number_of_rebounds<<index2[:rebounds]

    end

index_to_find=shoe_sizes.find_index(shoe_sizes.max)
corresponding_number_of_rebounds[index_to_find]

end
