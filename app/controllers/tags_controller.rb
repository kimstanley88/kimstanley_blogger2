class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end
  def index
    @tag = Tag.all
  end
  before_filter :require_login, only: [:destroy]
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    redirect_to tags_path
  end

end
