require 'rails_helper'

RSpec.describe Task, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:task)).to be_valid
  end

  it "is invalid without a title" do
    task = FactoryBot.build(:task, title: nil)
    expect(task).not_to be_valid
    expect(task.errors[:title]).to include("can't be blank")
  end

  it "defaults to not completed" do
    task = Task.new
    expect(task.completed).to be false
  end
end