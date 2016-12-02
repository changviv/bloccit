require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved: "It has been resolved")}
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_question] to @questions" do
      get :index
      expect(assigns(:question)).to eq([my_question])
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "instantiates @question" do
      get :new
      expect(assigns(:question)).not_to be_nil
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end

    it "increases the number of Question by 1" do
      expect{post :create, question: {title: "New Question Title", body: "New Question Body", resolved: "It has been resolved"}.to change(Question, :count).by(1)
    end

    it "assigns the new post to @post" do
      post :create, question: {title: "New Question Title", body: "New Question Body", resolved: "It has been resolved"}
      expect(assigns(:question)).to eq Question.last
    end

    it "redirects to the new post" do
      post :create, question: {title: "New Question Title", body: "New Question Body", resolved: "It has been resolved"}
      expect(response).to redirect_to Question.last
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_post.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, {id: my_question.id}
      expect(response).to render_template :show
    end

    it "assigns my_post to @post" do
      get :show, {id: my_question.id}
      expect(assigns(:question)).to eq(my_question)
      end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end


  end

  describe "GET #update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
