module ResultDecorator
  def group(path)
    path.split("/")[1]
  end

  def title(path)
    path.split("/")[2]
  end
end
