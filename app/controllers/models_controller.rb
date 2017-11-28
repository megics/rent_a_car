class ModelsController < ApplicationController

  def index
    @models = Model.all
  end

  def show
    @model = Model.find(id: params[:id])
  end

end
