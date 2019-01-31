require "rails_helper"

describe "navigate" do
  before do
    @user = FactoryBot.create(:user)
    @question = FactoryBot.create(:question)

  end
  describe 'index' do
    before do
      visit questions_path
    end

    it "can be visited succesfully" do
      expect(page.status_code).to eq(200)
    end

    it "has listed questions" do
      expect(page).to have_content(/What/)
    end
  end

  describe "show" do
    before do
      @question = FactoryBot.create(:question)
      visit question_path(@question)
    end

    it "has a question listed" do
      expect(page).to have_content(/What/)
    end

  end
end
