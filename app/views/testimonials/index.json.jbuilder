json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :designation, :text, :name
  json.url testimonial_url(testimonial, format: :json)
end
