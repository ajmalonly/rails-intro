class PagesController < ApplicationController
  def about
  end

  def apply
  end

  def contact
    @members = ["ashley", "sam", "jp", "xhanti", "bernard"]
    if params[:member]
      @members = @members.select do |member|
        member.start_with?(params[:member].downcase)
      end
    end
  end

  def profile
  end
end
