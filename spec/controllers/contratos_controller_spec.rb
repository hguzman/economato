require 'rails_helper'


RSpec.describe ContratosController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Contrato. As you add validations to Contrato, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {numero: 123, fecha_contrato_at: "17/10/2017", valor: 10000}
    # skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    {numero: 123, fecha_contrato_at: "17/10/2017"}
    # skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContratosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      contrato = Contrato.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      contrato = Contrato.create! valid_attributes
      get :show, params: {id: contrato.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      contrato = Contrato.create! valid_attributes
      get :edit, params: {id: contrato.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Contrato" do
        expect {
          post :create, params: {contrato: valid_attributes}
        }.to change(Contrato, :count).by(1)
      end

      it "redirects to the created contrato" do
        post :create, params: {contrato: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Contrato.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {contrato: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested contrato" do
        contrato = Contrato.create! valid_attributes
        put :update, params: {id: contrato.to_param, contrato: new_attributes}, session: valid_session
        contrato.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the contrato" do
        contrato = Contrato.create! valid_attributes
        put :update, params: {id: contrato.to_param, contrato: valid_attributes}, session: valid_session
        expect(response).to redirect_to(contrato)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        contrato = Contrato.create! valid_attributes
        put :update, params: {id: contrato.to_param, contrato: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested contrato" do
      contrato = Contrato.create! valid_attributes
      expect {
        delete :destroy, params: {id: contrato.to_param}, session: valid_session
      }.to change(Contrato, :count).by(-1)
    end

    it "redirects to the contratos list" do
      contrato = Contrato.create! valid_attributes
      delete :destroy, params: {id: contrato.to_param}, session: valid_session
      expect(response).to redirect_to(contratos_url)
    end
  end

end
