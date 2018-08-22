class DPostsController < ApplicationController
  before_action :set_d_post, only: [:show, :edit, :update, :destroy]

  # GET /d_posts
  # GET /d_posts.json
  def index
    @d_posts = DPost.all
  end

  # GET /d_posts/1
  # GET /d_posts/1.json
  def show
  end

  # GET /d_posts/new
  def new
    @d_post = DPost.new
  end

  # GET /d_posts/1/edit
  def edit
  end

  # POST /d_posts
  # POST /d_posts.json
  def create
    @d_post = DPost.new(d_post_params)

    respond_to do |format|
      if @d_post.save
        format.html { redirect_to @d_post, notice: 'D post was successfully created.' }
        format.json { render :show, status: :created, location: @d_post }
      else
        format.html { render :new }
        format.json { render json: @d_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d_posts/1
  # PATCH/PUT /d_posts/1.json
  def update
    respond_to do |format|
      if @d_post.update(d_post_params)
        format.html { redirect_to @d_post, notice: 'D post was successfully updated.' }
        format.json { render :show, status: :ok, location: @d_post }
      else
        format.html { render :edit }
        format.json { render json: @d_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d_posts/1
  # DELETE /d_posts/1.json
  def destroy
    @d_post.destroy
    respond_to do |format|
      format.html { redirect_to d_posts_url, notice: 'D post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d_post
      @d_post = DPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d_post_params
      params.require(:d_post).permit(:title, :content, :image)
    end
end
