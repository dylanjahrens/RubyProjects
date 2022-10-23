class DiceSet

  attr_accessor :first_dice, :second_dice 

  def roll_dice
    "[#{first_dice}] - [#{second_dice}]"
  end

end
