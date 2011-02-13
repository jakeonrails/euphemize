class PhrasesController < ApplicationController
  # GET /phrases
  # GET /phrases.xml
  def index
    if (params[:user_id])
      @user = User.find(params[:user_id])
      redirect_to(new_phrase_url, :notice => "Create your first phrase!") unless @user.phrases.any?
      @phrases = @user.phrases.all
    else
      @phrases = Phrase.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @phrases }
    end
  end

  # GET /phrases/1
  # GET /phrases/1.xml
  def show
    if (params[:user_id])
      @user = User.find(params[:user_id])
      @phrase = @user.phrases.find(params[:id])
    else
      @phrase = Phrase.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @phrase }
    end
  end

  # GET /phrases/new
  # GET /phrases/new.xml
  def new
    @phrase = Phrase.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @phrase }
    end
  end

  # GET /phrases/1/edit
  def edit
    @phrase = Phrase.find(params[:id])
  end

  # POST /phrases
  # POST /phrases.xml
  def create
    @phrase = Phrase.new(params[:phrase])

    respond_to do |format|
      if @phrase.save
        format.html { redirect_to(@phrase, :notice => 'Phrase was successfully created.') }
        format.xml  { render :xml => @phrase, :status => :created, :location => @phrase }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @phrase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /phrases/1
  # PUT /phrases/1.xml
  def update
    @phrase = Phrase.find(params[:id])

    respond_to do |format|
      if @phrase.update_attributes(params[:phrase])
        format.html { redirect_to(@phrase, :notice => 'Phrase was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @phrase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /phrases/1
  # DELETE /phrases/1.xml
  def destroy
    @phrase = Phrase.find(params[:id])
    @phrase.destroy

    respond_to do |format|
      format.html { redirect_to(phrases_url) }
      format.xml  { head :ok }
    end
  end
end
