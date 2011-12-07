module StyleguideHelper
  def styleguide_block section, styleguide = @styleguide, &block
    section = styleguide.section section

    render :partial => 'styleguide/block', :locals => { :section => section, :example_html => capture(&block) }
  end
end
