class ChaptersController < ApplicationController
  before_filter :load_book
  def load_book
    @book = Book.find(params[:book_id])
  end
  # GET /chapters
  # GET /chapters.xml
  def index
    @chapters = @book.chapters

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chapters }
    end
  end

  # GET /chapters/1
  # GET /chapters/1.xml
  def show
    @chapter = @book.chapters.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chapter }
    end
  end

  # GET /chapters/new
  # GET /chapters/new.xml
  def new
    @chapter = @book.chapters.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chapter }
    end
  end

  # GET /chapters/1/edit
  def edit
    @chapter = @book.chapters.find(params[:id])
  end

  # POST /chapters
  # POST /chapters.xml
  def create
    @chapter = @book.chapters.new(params[:chapter])

    respond_to do |format|
      if @chapter.save
        flash[:notice] = 'Chapter was successfully created.'
        format.html { redirect_to(@book) }
        format.xml  { render :xml => @chapter, :status => :created, :location => @chapter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chapter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chapters/1
  # PUT /chapters/1.xml
  def update
    @chapter = @book.chapters.find(params[:id])

    respond_to do |format|
      if @chapter.update_attributes(params[:chapter])
        flash[:notice] = 'Chapter was successfully updated.'
        format.html { redirect_to([@book,@chapter]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chapter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chapters/1
  # DELETE /chapters/1.xml
  def destroy
    @chapter = @book.chapters.find(params[:id])
    @chapter.destroy

    respond_to do |format|
      format.html { redirect_to(book_chapters_url(@book)) }
      format.xml  { head :ok }
    end
  end
end
