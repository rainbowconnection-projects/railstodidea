module ApplicationHelper
  def title(text)
    content_for :title, text
  end

  def meta_tag(tag, text)
    content_for :"meta_#{tag}", text
  end

  def yield_meta_tag(tag, default_text='')
    content_for?("meta_#{tag}") ? content_for?("meta_#{tag}") : default_text
  end

  def og_title(og_title)
    content_for :og_title, og_title
  end

  def og_url(og_url)
    content_for :og_url, og_url
  end

  def og_description(description)
    content_for :og_description, description
  end
  def og_image(image)
    content_for :og_image, image
  end
end
