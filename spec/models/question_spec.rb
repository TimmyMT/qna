require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should have_many(:answers).dependent(:destroy) }
  it { should have_many(:links).dependent(:destroy) }
  it { should have_one(:achievement).dependent(:nullify) }
  it { should belong_to(:user) }


  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }

  it { should accept_nested_attributes_for :links }
  it { should accept_nested_attributes_for :achievement }

  it 'have many attached files' do
    expect(Question.new.files).to be_an_instance_of(ActiveStorage::Attached::Many)
  end

  let(:user) { create(:user) }
  let(:wrong_user) { create(:user) }
  let(:resource) { create(:question, user: user) }

  it_behaves_like 'votable'
end
