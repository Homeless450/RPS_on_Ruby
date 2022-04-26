module ApplicationHelper
  def shape_image(shape, options)
    if FileTest.exist?("#{Rails.root}/app/assets/images/#{shape}.png")
      image_tag shape, options
    else
      image_tag 'default.png', options
    end
  end
end
