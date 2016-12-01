require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New Ad Title", body: "New Ad Body", price: "New Ad Price") }

  describe "attributes" do
    it "has title and body attributes" do
      expect(advertisement).to have_attributes(title: "New Ad Title", body: "New Ad Body")
    end

    it "should respond to price" do
      expect(advertisement).to respond_to(:price)
    end
  end
end
