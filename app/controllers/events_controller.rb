class EventsController < ApplicationController
 before_action :authenticate_company!, only: [:new, :create, :edit, :update]
 before_action :only_creator, only: [:edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @masseur = MasseurProfile.find(params[:masseur_profile_id])
  end

  def create
    @masseur = MasseurProfile.find(params[:masseur_profile_id])
    @event = Event.new(event_params.merge(company: current_company, masseur: @masseur.id))
    if @event.save
      redirect_to company_profile_path(current_company.company_profile), notice: "Votre évènement a bien été créé."
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id]) 
    @masseur = MasseurProfile.find(@event.masseur)
  end

  def update
    @event = Event.find(params[:id])
     if @event.update(event_params) 
      redirect_to company_profile_path(current_company.company_profile), notice: "Votre évènement a bien été modifié."
    else
      render :edit
    end
  end  

  def destroy
    @event = Event.find(params[:id])
		@event.destroy
    redirect_to company_profile_path(current_company.company_profile), notice: "Votre évènement a bien été supprimé."
  end 

  private

  def event_params
    params.require(:event).permit(:title, :description, :maximum_number_of_participation, moment: [])
  end

  def only_creator
    event = Event.find(params[:id])
    unless current_company == event.company
     redirect_to root_path, notice: "Vous n'êtes pas le créateur de l'évènement => Impossilble de le modifier."
    end
  end
end
