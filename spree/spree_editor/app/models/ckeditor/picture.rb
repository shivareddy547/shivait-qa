class Ckeditor::Picture < Ckeditor::Asset
  has_one_attached :data

  # Ckeditor::Picture.attachment_definitions[:data][:path] = '/:class/:id/:style/:basename.:extension'
  # Ckeditor::Picture.attachment_definitions[:data][:url] = '/:class/:id/:style/:basename.:extension'

  # validates_attachment_size :data, less_than: 2.megabytes
  # validates_attachment_presence :data

  def url_content
    url(:content)
  end
end
