# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'validate day' do
    expect(subject).to validate_presence_of :day
  end

  context 'lessons and day' do
    let!(:lesson) { create :item }

    it 'day' do
      lesson.day.eql? 'Понедельник'
      lesson.number == 1
    end

    it 'lessons' do
      lesson.st1 = 'Физкультура'
      lesson.st2 = 'Химия'
      lesson.st3 = 'Математика'
      lesson.st4 = 'Георграфия'
      lesson.st5 = 'Физика'
    end
  end
end
