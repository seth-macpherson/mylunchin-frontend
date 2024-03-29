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

describe PlatesController do

  # This should return the minimal set of attributes required to create a valid
  # Plate. As you add validations to Plate, be sure to
  # update the return value of this method accordingly.

  before :each do
    @plate = Factory :plate
  end

  describe "GET index" do
    it "assigns all plates as plates" do
      get :index
      assigns(:plates).should have_at_least(1).item
    end
  end

  describe "GET show" do
    it "assigns the requested plate as plate" do
      get :show, :id => @plate.id
      assigns(:plate).should eq(@plate)
    end
  end

  describe "GET new" do
    it "assigns a new plate as plate" do
      get :new
      assigns(:plate).should be_a_new(Plate)
    end
  end

  describe "GET edit" do
    it "assigns the requested plate as plate" do
      get :edit, :id => @plate.id
      assigns(:plate).should eq(@plate)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Plate" do
        expect {
          post :create, :plate => Factory.attributes_for(:plate)
        }.to change(Plate, :count).by(1)  
      end

      it "assigns a newly created plate as plate" do
        post :create, :plate => Factory.attributes_for(:plate)
        assigns(:plate).should be_a(Plate)
        assigns(:plate).should be_persisted
      end

      it "redirects to the created plate" do
        post :create, :plate => Factory.attributes_for(:plate)
        response.should redirect_to(Plate.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved plate as plate" do
        # Trigger the behavior that occurs when invalid params are submitted
        Plate.any_instance.stub(:save).and_return(false)
        post :create, :plate => {}
        assigns(:plate).should be_a_new(Plate)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Plate.any_instance.stub(:save).and_return(false)
        post :create, :plate => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested plate" do
        # Assuming there are no other plates in the database, this
        # specifies that the Plate created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Plate.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => @plate.id, :plate => {'these' => 'params'}
      end

      it "assigns the requested plate as plate" do
        plate = Plate.create! Factory.attributes_for(:plate)
        put :update, :id => @plate.id, :plate => Factory.attributes_for(:plate)
        assigns(:plate).should eq(@plate)
      end

      it "redirects to the plate" do
        plate = Plate.create! Factory.attributes_for(:plate)
        put :update, :id => @plate.id, :plate => Factory.attributes_for(:plate)
        response.should redirect_to(@plate)
      end
    end

    describe "with invalid params" do
      it "assigns the plate as plate" do
        plate = Plate.create! Factory.attributes_for(:plate)
        # Trigger the behavior that occurs when invalid params are submitted
        Plate.any_instance.stub(:save).and_return(false)
        put :update, :id => @plate.id, :plate => {}
        assigns(:plate).should eq(@plate)
      end

      it "re-renders the 'edit' template" do
        plate = Plate.create! Factory.attributes_for(:plate)
        # Trigger the behavior that occurs when invalid params are submitted
        Plate.any_instance.stub(:save).and_return(false)
        put :update, :id => @plate.id, :plate => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested plate" do
      plate = Plate.create! Factory.attributes_for(:plate)
      expect {
        delete :destroy, :id => @plate.id
      }.to change(Plate, :count).by(-1)
    end

    it "redirects to the plates list" do
      plate = Plate.create! Factory.attributes_for(:plate)
      delete :destroy, :id => @plate.id
      response.should redirect_to(plates_url)
    end
  end

end
