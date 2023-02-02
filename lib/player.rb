class Player
  attr_accessor :name, :team

  def initialize(name, team)
    @name = name
    @team = team
  end

  def self.choose_team_joueur1(choice)
    if choice == "croix"
      return "X"
    else 
      return "○"
    end
  end

  def self.choose_team_joueur2(choice)
    if choice == "croix"
      return "○"
    else 
      return "X"
    end
  end
end