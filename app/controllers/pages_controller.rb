class PagesController < ApplicationController
  def home
    flash[:notice] = t(:hello_flash)
  end

  def dummy_l18n
    flash[:notice] = t(:language)
  end
end
