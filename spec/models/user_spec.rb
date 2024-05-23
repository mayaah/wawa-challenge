require 'rails_helper'

RSpec.describe User, type: :model do
  let(:username) {"username"}

  subject { 
    described_class.new(
      username: username, 
      email: "test@example.com",
      password: "password"
    )  
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is invalid without a username"  do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it "is invalid without an email"  do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is invalid without a password"  do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  context 'when username is not unique' do
    before { 
      described_class.create!(
        username: username, 
        email: 'email@email.com', 
        password: 'password'
      )
    }

    it {expect(subject).to be_invalid}
  end
end
