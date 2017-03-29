require 'rails_helper'

describe User do
  let(:user) { User.new(username: "MikeyB", email: "test@email.com", password: "password")}

  describe "attributes" do
    it "has a username" do
      expect(user.username).to eq("MikeyB")
    end

    it "has an email" do
      expect(user.email).to eq("test@email.com")
    end

    it "has a secure password" do
      expect(user.password_digest.class).to be(BCrypt::Password)
    end
  end

end
