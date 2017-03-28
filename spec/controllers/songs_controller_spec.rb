require 'rails_helper'

describe SongsController do
  let(:song) { Song.new(title: "Father Stretch my Hands pt. 1", artist: "Kanye West") }

  describe "GET #index" do
    it "responds with status code 200" do
      get(:index)
      expect(response).to have_http_status 200
    end

    it "renders the :index template" do
      get(:index)
      expect(response).to render_template(:index)
    end

    it "assigns the recent songs as @songs" do
      get(:index)
      expect(assigns(:songs)).to eq(Song.all)
    end
  end
end
