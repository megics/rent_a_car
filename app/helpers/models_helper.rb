module ModelsHelper
  def model_names(models)
    models.collect {|model| model.modelName}.join(", ")
  end
end
