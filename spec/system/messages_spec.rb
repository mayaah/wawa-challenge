require 'rails_helper'

RSpec.describe 'Rooms', type: :system do
  let!(:user) { FactoryBot.create(:user) }
  let!(:room) { FactoryBot.create(:room) }

  before :each do
    login_as(FactoryBot.create(:user))
  end

  describe 'index page' do
    context 'when the user is logged in' do
      context 'and the user navigates to the room' do
        it 'shows the right content' do
          visit rooms_path
          click_on room.name
          expect(page).to have_content(room.name, count: 2)
          expect(page).to have_button('Create Message')
        end

        context 'and the user creates a message' do
          let(:message) { 'Hello world' }

          it 'the message shows' do
            visit rooms_path
            click_on room.name
            fill_in 'message_body', with: message
            click_on 'Create Message'
            expect(page).to have_content(message)
          end
        end
      end
    end
  end
end
