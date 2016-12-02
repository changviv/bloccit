require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved: "It has been resolved")}
end

  describe "attributes" do
    it "has a title and body attirbutes" do
      expect(question).to have_attributes(title: "New Question Title", body: "New Question Body")
    end

    it "should respond to resolved" do
      expect(question).to respond_to(:resolved)
    end
  end
end
