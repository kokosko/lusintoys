class Product < ActiveRecord::Base
  validates :title, :article, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :price, numericality: { less_than: 1_000_000 }
  validates :image_name, allow_blank: true, format: {
    with: /\.(jpg|png)/,
    message: ' must be .jpg or .png file'
  }

  has_many :order_products
  mount_uploader :image_name, ProductUploader

  scope :search, lambda { |search|
    where('products.title ILIKE ?', "%#{search}%").group('products.id')
  }
end
