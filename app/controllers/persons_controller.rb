class PersonsController < ApplicationController

  def index
    if params[:q]=='<actor>'
      redirect_to actors_path

    else if params[:q]=='<director>'
      redirect_to directors_path
         else
            redirect_to 'persons#new'
         end
      end

  end
  def new

  end
  def create
    if params[:type]=="Actor"
      @actor = Actor.new(actor_director_params)

      respond_to do |format|
        if @actor.save
          format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end

    else
      @director = Director.new(actor_director_params)

      respond_to do |format|
        if @director.save
          format.html { redirect_to @director, notice: 'Director was successfully created.' }
          format.json { render :show, status: :created, location: @director }
        else
          format.html { render :new }
          format.json { render json: @director.errors, status: :unprocessable_entity }
        end
      end

    end


  end
  def actor_director_params
    params.permit(:first_name, :last_name, :birth_date, :description)
  end


end
