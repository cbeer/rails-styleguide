module StyleguideHelper
  def styleguide_block section, &block
    section = styleguide.section section

    render :partial => 'styleguide/block', :locals => { :section => section, :example_html => capture(&block) }
  end

  def styleguide
    @styleguide ||= Kss::Parser.new(File.join(Rails.root, Rails.application.paths["app/assets"], "stylesheets"))
  end
end
