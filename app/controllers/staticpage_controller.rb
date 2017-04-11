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
  def cio_raffle_receive_prize
    @sponsor = Sponsor.find(params[:sponsor_id])
    @practitioner = Practitioner.find(params[:practitioner_id])
    @practitioner.won = true
    @sponsor.prizes = @sponsor.prizes - 1
    render :json => {success: true}
  end
  def cio_raffle_not_present
    @practitioner = Practitioner.find(params[:practitioner_id])
    @practitioner.present = false
    render :json => {success: true}
  end
end
