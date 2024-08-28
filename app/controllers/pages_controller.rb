class PagesController < ApplicationController
  def home
    flash[:notice] = t(:hello_flash)
  end

  def register
  end

  def information
  end

  def pictures
  end

  def partners
  end

  def schedule_and_results
  end
end
