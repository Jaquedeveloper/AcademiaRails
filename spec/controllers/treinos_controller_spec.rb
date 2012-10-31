require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TreinosController do

  # This should return the minimal set of attributes required to create a valid
  # Treino. As you add validations to Treino, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TreinosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all treinos as @treinos" do
      treino = Treino.create! valid_attributes
      get :index, {}, valid_session
      assigns(:treinos).should eq([treino])
    end
  end

  describe "GET show" do
    it "assigns the requested treino as @treino" do
      treino = Treino.create! valid_attributes
      get :show, {:id => treino.to_param}, valid_session
      assigns(:treino).should eq(treino)
    end
  end

  describe "GET new" do
    it "assigns a new treino as @treino" do
      get :new, {}, valid_session
      assigns(:treino).should be_a_new(Treino)
    end
  end

  describe "GET edit" do
    it "assigns the requested treino as @treino" do
      treino = Treino.create! valid_attributes
      get :edit, {:id => treino.to_param}, valid_session
      assigns(:treino).should eq(treino)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Treino" do
        expect {
          post :create, {:treino => valid_attributes}, valid_session
        }.to change(Treino, :count).by(1)
      end

      it "assigns a newly created treino as @treino" do
        post :create, {:treino => valid_attributes}, valid_session
        assigns(:treino).should be_a(Treino)
        assigns(:treino).should be_persisted
      end

      it "redirects to the created treino" do
        post :create, {:treino => valid_attributes}, valid_session
        response.should redirect_to(Treino.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved treino as @treino" do
        # Trigger the behavior that occurs when invalid params are submitted
        Treino.any_instance.stub(:save).and_return(false)
        post :create, {:treino => {}}, valid_session
        assigns(:treino).should be_a_new(Treino)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Treino.any_instance.stub(:save).and_return(false)
        post :create, {:treino => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested treino" do
        treino = Treino.create! valid_attributes
        # Assuming there are no other treinos in the database, this
        # specifies that the Treino created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Treino.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => treino.to_param, :treino => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested treino as @treino" do
        treino = Treino.create! valid_attributes
        put :update, {:id => treino.to_param, :treino => valid_attributes}, valid_session
        assigns(:treino).should eq(treino)
      end

      it "redirects to the treino" do
        treino = Treino.create! valid_attributes
        put :update, {:id => treino.to_param, :treino => valid_attributes}, valid_session
        response.should redirect_to(treino)
      end
    end

    describe "with invalid params" do
      it "assigns the treino as @treino" do
        treino = Treino.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Treino.any_instance.stub(:save).and_return(false)
        put :update, {:id => treino.to_param, :treino => {}}, valid_session
        assigns(:treino).should eq(treino)
      end

      it "re-renders the 'edit' template" do
        treino = Treino.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Treino.any_instance.stub(:save).and_return(false)
        put :update, {:id => treino.to_param, :treino => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested treino" do
      treino = Treino.create! valid_attributes
      expect {
        delete :destroy, {:id => treino.to_param}, valid_session
      }.to change(Treino, :count).by(-1)
    end

    it "redirects to the treinos list" do
      treino = Treino.create! valid_attributes
      delete :destroy, {:id => treino.to_param}, valid_session
      response.should redirect_to(treinos_url)
    end
  end

end
