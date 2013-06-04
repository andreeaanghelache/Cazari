require 'json'
require 'open-uri'

class AccommodationsController < ApplicationController
 before_filter :login_required
 
 def index
    @accommodations = Accommodation.all
    
    @contor = 0

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accommodations }
    end
  end

  # GET /accommodations/1
  # GET /accommodations/1.json
  def show
    @accommodation = Accommodation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accommodation }
    end
  end

  # GET /accommodations/new
  # GET /accommodations/new.json
  def new
    @accommodation = Accommodation.new

    @result = JSON.parse(open("http://fmi-autentificare.herokuapp.com/users/#{@current_user.uid}.json?oauth_token=#{@current_user.token}").read)
    #logger.info('result =' + @result.inspect)
    @dorms = Dormitory.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accommodation }
    end
  end

  # GET /accommodations/1/edit
  def edit
    @accommodation = Accommodation.find(params[:id])
   
    @result = JSON.parse(open("http://fmi-autentificare.herokuapp.com/users/#{@current_user.uid}.json?oauth_token=#{@current_user.token}").read)
    #logger.info('result =' + @result.inspect)
    @dorms = Dormitory.all

     respond_to do |format|
      format.html # edit.html.erb
      format.json { render json: @accommodation }
    end
  end


  # POST /accommodations
  # POST /accommodations.json
  def create
    #Add dorms hash to accomodation hash
    params[:accommodation].merge!(params[:dorms_hash])
    
    @accommodation = Accommodation.new(params[:accommodation])

    respond_to do |format|
      if @accommodation.save
        format.html { redirect_to @accommodation, notice: 'Accommodation was successfully created.' }
        format.json { render json: @accommodation, status: :created, location: @accommodation }
      else
        format.html { render action: "new" }
        format.json { render json: @accommodation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accommodations/1
  # PUT /accommodations/1.json
  def update
    params[:accommodation].merge!(params[:dorms_hash])

    @accommodation = Accommodation.find(params[:id])

    respond_to do |format|
      if @accommodation.update_attributes(params[:accommodation])
        format.html { redirect_to @accommodation, notice: 'Accommodation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @accommodation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accommodations/1
  # DELETE /accommodations/1.json
  def destroy
    @accommodation = Accommodation.find(params[:id])
    @accommodation.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  def student_profile

    @result = JSON.parse(open("http://fmi-autentificare.herokuapp.com/users/#{@current_user.uid}.json?oauth_token=#{@current_user.token}").read)
    #logger.info('result =' + @result.inspect)
    
    #Get last accommodation sent 
    @accommodation = Accommodation.where("user_id = ?", @current_user.uid).last()
    #logger.info("last accommodation= " + @accommodation.inspect)
  end

  def verified_results
    @result = JSON.parse(open("http://fmi-autentificare.herokuapp.com/users/#{@current_user.uid}.json?oauth_token=#{@current_user.token}").read)
    #logger.info('result =' + @result.inspect)
  end

  def decision 
    @result = JSON.parse(open("http://fmi-autentificare.herokuapp.com/users/#{@current_user.uid}.json?oauth_token=#{@current_user.token}").read)
    #logger.info('result =' + @result.inspect)
  end

  def documents
  
  end

  def score_list
    @contor = 0
    
    @accommodations = Accommodation.all
  end
end
