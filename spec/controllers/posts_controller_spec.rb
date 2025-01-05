require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      sign_in create(:user) # Assuming you have a user factory
      get :index
      expect(response).to be_successful
    end
  end
end 