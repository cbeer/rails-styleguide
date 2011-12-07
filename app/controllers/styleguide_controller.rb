class StyleguideController < ActionController::Base
  extend ActiveSupport::Memoizable
  layout "styleguide"

  def self.initialize_stylesheets_path_config
    self.config.stylesheets_path ||= {}
    self.config.stylesheets_path[:default] ||= File.join(Rails.root, Rails.application.paths["app/assets"], "stylesheets")
  end
  self.initialize_stylesheets_path_config

  def show 
    id = params[:id]
    id ||= :default

    @styleguide = styleguide(id)

    respond_to do |format|
      format.html { render id.to_s }
    end
  end

  protected
  def stylesheets_path id
    config = self.class.config.stylesheets_path[id.to_sym]
    raise RoutingError unless config
    config
  end

  def styleguide id
    path = stylesheets_path(id)
    @styleguide = Kss::Parser.new(path)
  end
  memoize :styleguide

end
