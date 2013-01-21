module PhotosHelper
  def slider_image(photo)
    image_tag photo.image_url(:large), alt: photo.title
  end
end
