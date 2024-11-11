class PagesController < ApplicationController
  def about
  end

  def home
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    search_param = params[:search]

    if search_param
      @members = @members.select { |member| member.starts_with?(search_param) }
    end
  end
end
