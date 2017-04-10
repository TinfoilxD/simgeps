class StaticpageController < ApplicationController
  def home
  end

  def cio_raffle
    @sponsors = Sponsor.all
  end

  def sim_raffle
  end

  def cio_raffle_get_winners
    Sponsor.find(params[:id])
    practitioners = (Practitioner.where('(won= ? AND present= ?)',false, true)).sample(2)
    render :json => practitioners
  end
end
