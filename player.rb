class Player

  def initialize(name, num, shoe, points, rebs, ass, stls, blks, dunk)
    @name = name
    @number = num
    @shoe = shoe
    @points = points
    @rebounds = rebs
    @assists = ass
    @steals = stls
    @blocks = blks
    @dunks = dunk
  end

  def get_player
    stats = []
    stats[0] = @name
    stats[1] = @number
    stats[2] = @shoe
    stats[3] = @points
    stats[4] = @rebounds
    stats[5] = @assists
    stats[6] = @steals
    stats[7] = @blocks
    stats[8] = @dunks

    return stats
  end

  def get_name
    return @name
  end

  def get_num
    return @number
  end

  def get_shoe
    return @shoe
  end

  def get_pts
    return @points
  end

  def get_rebs
    return @rebounds
  end

  def get_ass
    return @assists
  end

  def get_steals
    return @steals
  end

  def get_blocks
    return @blocks
  end

  def get_dunks
    return @dunks
  end

  def name= (name)
     @name = name
  end

  def number= (num)
     @number = num
  end

  def shoe= (shoe)
     @shoe = shoe
  end

  def points= (name)
     @points = name
  end

  def rebounds= (name)
     @rebounds = name
  end

  def assists= (name)
     @assists = name
  end

  def steals= (name)
     @steals = name
  end

  def blocks= (name)
     @blocks = name
  end

  def dunks= (name)
     @dunks = name
  end



end
