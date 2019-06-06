class ChartSampleController < ApplicationController
  def index
    gon.data = []
    10.times do
      gon.data << rand(100.0)
    end
  end
end
