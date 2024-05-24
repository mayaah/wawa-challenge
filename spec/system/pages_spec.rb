require 'rails_helper'

RSpec.describe 'Home', type: :system do
  describe 'index page' do
    context 'when the user is not logged in' do
      it 'shows the right content' do
        visit root_path
        expect(page).to have_content('Simple Chatroom')
        expect(page).to have_link('Login')
        expect(page).to have_link('Sign up')
      end
    end
  end

  describe 'index page' do
    context 'when the user is logged in' do
      let(:user) { FactoryBot.create(:user) }

      it 'shows the right content' do
        login_as(user)
        visit root_path
        expect(page).to have_content('Simple Chatroom')
        expect(page).to have_content('Hello')
        expect(page).to have_link('Go to Rooms')
        expect(page).to have_link('Logout')
      end
    end
  end
end
