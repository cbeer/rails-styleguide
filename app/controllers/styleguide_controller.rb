class StyleguideController < ActionController::Base
  extend ActiveSupport::Memoizable
  layout "styleguide"

  ##
  # Set up the stylesheets configuration
  def self.initialize_stylesheets_path_config
    self.config.stylesheets_path ||= {}
    self.config.stylesheets_path[:default] ||= File.join(Rails.root, Rails.application.paths["app/assets"], "stylesheets")
  end
  self.initialize_stylesheets_path_config

  ##
  # TODO: write an index view for configured styleguides
  #def index
  #
  #end

  ##
  # Show a styleguide
  #
  def show 
    id = params[:id]
    id ||= :default

    @styleguide = styleguide(id)

    respond_to do |format|
      format.html { render id.to_s }
    end
  end

  protected
  ##
  # Return the directory path for a given path id
  def stylesheets_path id
    config = self.class.config.stylesheets_path[id.to_sym]
    raise RoutingError unless config
    config
  end

  ##
  # Get the Kss-parsed styleguide
  def styleguide id
    path = stylesheets_path(id)
    @styleguide = Kss::Parser.new(path)
  end
  memoize :styleguide

end
