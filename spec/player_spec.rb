require_relative '../lib/app/box'

describe "La méthode fill_box" do
  it "rempli la case en fonction de sa colonne et de sa valeur" do
    expect(Box.fill_box("X", 1)).to eq("║ X ║")
    expect(Box.fill_box("Coucou", 1)).to eq("║ Coucou ║")
    expect(Box.fill_box(" ", 1)).to eq("║   ║")

  end
end


