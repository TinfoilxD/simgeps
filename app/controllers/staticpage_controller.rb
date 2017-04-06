class StaticpageController < ApplicationController
  def home
  end

  def cio_raffle
    @sponsors = Sponsor.all
  end

  def sim_raffle
  end
end
