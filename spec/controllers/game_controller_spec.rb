require 'rails_helper'

RSpec.describe GameController, type: :controller do
  render_views

  describe 'homepage' do
    it 'renders index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'play' do
    it 'renders play template' do
      get :play
      expect(response).to render_template(:play)
    end
  end
end

RSpec.feature 'GameFeatures', :type => :feature do
  scenario 'user clicks on Play button' do
    visit '/'
    click_link 'Play'
    expect(page).to have_text('Player vs Bot')
  end
end
