class UserScoresController < ApplicationController
  # GET /user_scores
  # GET /user_scores.json
  def index
    @user_scores = UserScore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_scores }
    end
  end

  # GET /user_scores/1
  # GET /user_scores/1.json
  def show
    @user_score = UserScore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_score }
    end
  end

  # GET /user_scores/new
  # GET /user_scores/new.json
  def new
    @user_score = UserScore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_score }
    end
  end

  # GET /user_scores/1/edit
  def edit
    @user_score = UserScore.find(params[:id])
  end

  # POST /user_scores
  # POST /user_scores.json
  def create
    @user_score = UserScore.new(params[:user_score])

    respond_to do |format|
      if @user_score.save
        format.html { redirect_to @user_score, notice: 'User score was successfully created.' }
        format.json { render json: @user_score, status: :created, location: @user_score }
      else
        format.html { render action: "new" }
        format.json { render json: @user_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_scores/1
  # PUT /user_scores/1.json
  def update
    @user_score = UserScore.find(params[:id])

    respond_to do |format|
      if @user_score.update_attributes(params[:user_score])
        format.html { redirect_to @user_score, notice: 'User score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_scores/1
  # DELETE /user_scores/1.json
  def destroy
    @user_score = UserScore.find(params[:id])
    @user_score.destroy

    respond_to do |format|
      format.html { redirect_to user_scores_url }
      format.json { head :no_content }
    end
  end
end
