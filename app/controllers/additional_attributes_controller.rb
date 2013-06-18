class AdditionalAttributesController < ApplicationController
  # GET /additional_attributes
  # GET /additional_attributes.json
  def index
    @additional_attributes = AdditionalAttribute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @additional_attributes }
    end
  end

  # GET /additional_attributes/1
  # GET /additional_attributes/1.json
  def show
    @additional_attribute = AdditionalAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @additional_attribute }
    end
  end

  # GET /additional_attributes/new
  # GET /additional_attributes/new.json
  def new
    @additional_attribute = AdditionalAttribute.new
    @models = @additional_attribute.get_model_names
    @attr_type = AdditionalAttribute::SINGLE_VALUED_ATTRIBUTE + AdditionalAttribute::MULTI_VALUED_ATTRIBUTE

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @additional_attribute }
    end
  end

  # GET /additional_attributes/1/edit
  def edit
    @additional_attribute = AdditionalAttribute.find(params[:id])
  end

  # POST /additional_attributes
  # POST /additional_attributes.json
  def create
    params[:additional_attribute][:value] = params[:additional_attribute][:value].split('#')
    @additional_attribute = AdditionalAttribute.new(params[:additional_attribute])

    respond_to do |format|
      if @additional_attribute.save
        format.html { redirect_to @additional_attribute, notice: 'Additional attribute was successfully created.' }
        format.json { render json: @additional_attribute, status: :created, location: @additional_attribute }
      else
        format.html { render action: "new" }
        format.json { render json: @additional_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /additional_attributes/1
  # PUT /additional_attributes/1.json
  def update
    @additional_attribute = AdditionalAttribute.find(params[:id])

    respond_to do |format|
      if @additional_attribute.update_attributes(params[:additional_attribute])
        format.html { redirect_to @additional_attribute, notice: 'Additional attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @additional_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additional_attributes/1
  # DELETE /additional_attributes/1.json
  def destroy
    @additional_attribute = AdditionalAttribute.find(params[:id])
    @additional_attribute.destroy

    respond_to do |format|
      format.html { redirect_to additional_attributes_url }
      format.json { head :no_content }
    end
  end
end
