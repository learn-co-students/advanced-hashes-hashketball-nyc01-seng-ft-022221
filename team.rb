class Team

def initialize(name, home, colors, players)
  @name = name
  @home = home
  @colors = colors
  @players = players
end

def get_name
  return @name
end

def home?
  return @home
end

def get_colors
  return @colors
end

def players
  return @players
end

def name= (n)
  @name = n
end

def home= (h)
  @home = h
end

def colors= (c)
  @colors = c
end

def players= (p)
  @players = p
end

end
