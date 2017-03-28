require 'rails_helper'

describe Song do
  let(:song) { Song.new(title: "Father Stretch my Hands pt. 1", artist: "Kanye West") }

  describe "attributes" do
    it "has a title" do
      expect(song.title).to eq("Father Stretch my Hands pt. 1")
    end

    it "has an artist" do
      expect(song.artist).to eq("Kanye West")
    end
  end
end
