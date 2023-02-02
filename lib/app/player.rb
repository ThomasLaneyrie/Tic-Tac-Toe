class Player
  attr_accessor :name, :team

  def initialize(name, team)
    @name = name
    @team = team
  end

  def self.choose_team_joueur1(choice)
    if choice == "croix"
      return "X".red
    else 
      return "○".blue
    end
  end

  def self.choose_team_joueur2(choice)
    if choice == "croix"
      return "○".blue
    else 
      return "X".red
    end
  end
end