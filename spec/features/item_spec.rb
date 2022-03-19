require 'rails_helper'

RSpec.feature 'ItemFeature', type: :feature do
  context 'view schedule is_821' do
    it 'should be successful' do
      visit('/items')
      click_button 'ИC-821'
      expect(page).to have_content("Shedule\nИC-821")
    end
  end

  context 'view schedule is_822' do
    it 'should be successful' do
      visit('/items')
      click_button 'ИC-822'
      expect(page).to have_content("Shedule\nИC-822")
    end
  end

  context 'view schedule is_823' do
    it 'should be successful' do
      visit('/items')
      click_button 'ИC-823'
      expect(page).to have_content("Shedule\nИC-823")
    end
  end
end