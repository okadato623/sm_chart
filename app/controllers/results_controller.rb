class ResultsController < ApplicationController
  def list
    @results = Result.all
  end
end
