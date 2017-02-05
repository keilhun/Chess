describe Cell do
  describe "initialize" do
    it "returns blank on initialization" do
      response = Cell.new
      expect(response.contents).to eq ""
    end
  end
  describe "set" do
    it "sets value to yellow" do
      response = Cell.new
      response.set("Yellow")
      expect(response.contents).to eq "Yellow"
    end
    it "sets value to red" do
      response = Cell.new
      response.set("Red")
      expect(response.contents).to eq "Red"
    end
  end
end