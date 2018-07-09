require 'rails_helper'

RSpec.describe User, :type => :model do
    fixtures :users
    subject { users(:first) }

    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end

    it "is not valid with empty password" do
        subject.password = ''
        expect(subject).to_not be_valid
    end

    it "is not valid with invalid email" do
        subject.email = 'tralari tralaru'
        expect(subject).to_not be_valid
    end

    it "email is not valid with more than one @ sign" do
        subject.email = "skobraf@@@gmail.com"
        expect(subject).to_not be_valid
    end

    it "is not valid with empty username" do
        subject.username = ''
        expect(subject).to_not be_valid
    end
  end