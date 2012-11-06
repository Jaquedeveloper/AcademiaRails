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

describe TreinoexerciciosController do

  # This should return the minimal set of attributes required to create a valid
  # Treinoexercicio. As you add validations to Treinoexercicio, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TreinoexerciciosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all treinoexercicios as @treinoexercicios" do
      treinoexercicio = Treinoexercicio.create! valid_attributes
      get :index, {}, valid_session
      assigns(:treinoexercicios).should eq([treinoexercicio])
    end
  end

  describe "GET show" do
    it "assigns the requested treinoexercicio as @treinoexercicio" do
      treinoexercicio = Treinoexercicio.create! valid_attributes
      get :show, {:id => treinoexercicio.to_param}, valid_session
      assigns(:treinoexercicio).should eq(treinoexercicio)
    end
  end

  describe "GET new" do
    it "assigns a new treinoexercicio as @treinoexercicio" do
      get :new, {}, valid_session
      assigns(:treinoexercicio).should be_a_new(Treinoexercicio)
    end
  end

  describe "GET edit" do
    it "assigns the requested treinoexercicio as @treinoexercicio" do
      treinoexercicio = Treinoexercicio.create! valid_attributes
      get :edit, {:id => treinoexercicio.to_param}, valid_session
      assigns(:treinoexercicio).should eq(treinoexercicio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Treinoexercicio" do
        expect {
          post :create, {:treinoexercicio => valid_attributes}, valid_session
        }.to change(Treinoexercicio, :count).by(1)
      end

      it "assigns a newly created treinoexercicio as @treinoexercicio" do
        post :create, {:treinoexercicio => valid_attributes}, valid_session
        assigns(:treinoexercicio).should be_a(Treinoexercicio)
        assigns(:treinoexercicio).should be_persisted
      end

      it "redirects to the created treinoexercicio" do
        post :create, {:treinoexercicio => valid_attributes}, valid_session
        response.should redirect_to(Treinoexercicio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved treinoexercicio as @treinoexercicio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Treinoexercicio.any_instance.stub(:save).and_return(false)
        post :create, {:treinoexercicio => {}}, valid_session
        assigns(:treinoexercicio).should be_a_new(Treinoexercicio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Treinoexercicio.any_instance.stub(:save).and_return(false)
        post :create, {:treinoexercicio => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested treinoexercicio" do
        treinoexercicio = Treinoexercicio.create! valid_attributes
        # Assuming there are no other treinoexercicios in the database, this
        # specifies that the Treinoexercicio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Treinoexercicio.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => treinoexercicio.to_param, :treinoexercicio => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested treinoexercicio as @treinoexercicio" do
        treinoexercicio = Treinoexercicio.create! valid_attributes
        put :update, {:id => treinoexercicio.to_param, :treinoexercicio => valid_attributes}, valid_session
        assigns(:treinoexercicio).should eq(treinoexercicio)
      end

      it "redirects to the treinoexercicio" do
        treinoexercicio = Treinoexercicio.create! valid_attributes
        put :update, {:id => treinoexercicio.to_param, :treinoexercicio => valid_attributes}, valid_session
        response.should redirect_to(treinoexercicio)
      end
    end

    describe "with invalid params" do
      it "assigns the treinoexercicio as @treinoexercicio" do
        treinoexercicio = Treinoexercicio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Treinoexercicio.any_instance.stub(:save).and_return(false)
        put :update, {:id => treinoexercicio.to_param, :treinoexercicio => {}}, valid_session
        assigns(:treinoexercicio).should eq(treinoexercicio)
      end

      it "re-renders the 'edit' template" do
        treinoexercicio = Treinoexercicio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Treinoexercicio.any_instance.stub(:save).and_return(false)
        put :update, {:id => treinoexercicio.to_param, :treinoexercicio => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested treinoexercicio" do
      treinoexercicio = Treinoexercicio.create! valid_attributes
      expect {
        delete :destroy, {:id => treinoexercicio.to_param}, valid_session
      }.to change(Treinoexercicio, :count).by(-1)
    end

    it "redirects to the treinoexercicios list" do
      treinoexercicio = Treinoexercicio.create! valid_attributes
      delete :destroy, {:id => treinoexercicio.to_param}, valid_session
      response.should redirect_to(treinoexercicios_url)
    end
  end

end