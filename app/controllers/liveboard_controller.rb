class LiveboardController < ApplicationController
  def index
    @fliers = Flier.all
  end
end
