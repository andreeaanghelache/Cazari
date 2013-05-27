class DormitoryCategoriesController < ApplicationController
  # GET /dormitory_categories
  # GET /dormitory_categories.json
  def index
    @dormitory_categories = DormitoryCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dormitory_categories }
    end
  end

  # GET /dormitory_categories/1
  # GET /dormitory_categories/1.json
  def show
    @dormitory_category = DormitoryCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dormitory_category }
    end
  end

  # GET /dormitory_categories/new
  # GET /dormitory_categories/new.json
  def new
    @dormitory_category = DormitoryCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dormitory_category }
    end
  end

  # GET /dormitory_categories/1/edit
  def edit
    @dormitory_category = DormitoryCategory.find(params[:id])
  end

  # POST /dormitory_categories
  # POST /dormitory_categories.json
  def create
    @dormitory_category = DormitoryCategory.new(params[:dormitory_category])

    respond_to do |format|
      if @dormitory_category.save
        format.html { redirect_to @dormitory_category, notice: 'Dormitory category was successfully created.' }
        format.json { render json: @dormitory_category, status: :created, location: @dormitory_category }
      else
        format.html { render action: "new" }
        format.json { render json: @dormitory_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dormitory_categories/1
  # PUT /dormitory_categories/1.json
  def update
    @dormitory_category = DormitoryCategory.find(params[:id])

    respond_to do |format|
      if @dormitory_category.update_attributes(params[:dormitory_category])
        format.html { redirect_to @dormitory_category, notice: 'Dormitory category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dormitory_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dormitory_categories/1
  # DELETE /dormitory_categories/1.json
  def destroy
    @dormitory_category = DormitoryCategory.find(params[:id])
    @dormitory_category.destroy

    respond_to do |format|
      format.html { redirect_to dormitory_categories_url }
      format.json { head :no_content }
    end
  end
end
