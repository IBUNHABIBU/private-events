class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)
    @invitation.invited_user_id = User.find_by(email: @invitation.email).id
    if @invitation.save
      flash[:notice] = 'Invitation sent'
      redirect_to event_path(params[:invitation][:event_id])
    else
      flash[:warn] = 'Error occured: try again'
      redirect_to invite_path(eventid: params[:invitation][:event_id])
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:email, :event_creator, :event_id)
  end
end
