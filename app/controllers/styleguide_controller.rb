class StyleguideController < ActionController::Base
  helper_method :stylegude
  layout "styleguide"

  def index
    respond_to do |format|
      format.html
    end
  end
end
