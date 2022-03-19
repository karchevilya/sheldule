# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  render_views

  let!(:items) { create_list :item, 5 }
  let(:item) { create :item }

  let!(:items_params) do
    {
      day: 'Понедельник',
      number: 1,
      st1: 'Физика',
      st2: 'Русский язык',
      st3: 'Математика',
      st4: 'Физкультура',
      st5: 'Право',
      st6: 'Экономика'
    }
  end

  context 'GET #iv_821' do
    before { get :index }

    it 'returns items' do
      expect(subject).to render_template :index
      expect(assigns(:items)).to match_array items
    end
  end

  context 'POST #create' do
    subject { post :create, params: items_params }

    it 'saves the item' do
      expect { subject }.to change(Item, :count).by 1
    end

    it 'redirect to index' do
      expect(subject).to redirect_to action: :index
    end

    context 'with invalid params' do
      let(:items_params) do
        { number: -1 }
      end

      it 'doesnt save' do
        expect { subject }.not_to change(Item, :count)
      end
    end
  end
end
