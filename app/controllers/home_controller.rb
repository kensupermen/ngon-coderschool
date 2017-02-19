class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @sections = Section.all
    if params[:section_id].present?
      @current_section = Section.find(params[:section_id])
      @food_items = @current_section.food_items
    end

    if params[:sort_column]
      @current_section = Section.find(params[:section_id])
      @food_items = @current_section.food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end

   if params[:name]
    
      @current_section = Section.find(params[:section_id])
      @food_items = @current_section.food_items.where("name ILIKE ?", params[:name])

   end

  end
end
