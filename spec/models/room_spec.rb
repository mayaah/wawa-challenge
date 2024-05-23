require 'rails_helper'

RSpec.describe Room, type: :model do
  let(:name) { "General" }

  subject { described_class.new(name: name) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is invalid without a name"  do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  context 'when name is not unique' do
    before { described_class.create!(name: name) }

    it {expect(subject).to be_invalid}
  end
end
