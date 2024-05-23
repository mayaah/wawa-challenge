require 'rails_helper'

RSpec.describe 'Rooms', type: :system do
  let!(:user) { FactoryBot.create(:user) }
  let!(:room) { FactoryBot.create(:room) }

  before :each do
    login_as(FactoryBot.create(:user))
  end

  describe 'index page' do
    context 'when the user is logged in' do
      it 'shows the right content' do
        visit rooms_path
        expect(page).to have_content('Rooms')
        expect(page).to have_button('Create Room')
      end

      context 'when the user creates a room' do
        context 'with a unique room name' do
          it 'the room appears in list' do
            visit rooms_path
            fill_in 'room_name', with: 'Random'
            click_on 'Create Room'
            expect(page).to have_content('Random')
          end
        end

        context 'with not a unique name' do
          it 'the room is not created again' do
            visit rooms_path
            fill_in 'room_name', with: room.name
            click_on 'Create Room'
            expect(page).to have_content(room.name, count: 1)
          end
        end
      end
    end
  end
end
