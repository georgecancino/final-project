# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Categories
categories = Category.create([
  { name: 'Face', description: 'Makeup products for the face', active: true },
  { name: 'Eyes', description: 'Makeup products for the eyes', active: true },
  { name: 'Lips', description: 'Makeup products for the lips', active: true }
])

# Products
face_category = Category.find_by(name: 'Face')
Product.create([
  { name: 'Skin Tech Foundation', price: 44.99, description: 'Liquid medium coverage foundation for a flawless finish', category: face_category },
  { name: 'Skin Tech Concealer', price: 31.99, description: 'Liquid, hydrating + de-puffing concealer', category: face_category },
  { name: 'Velvet Bronzer', price: 37.99, description: 'Natural, skin-like finish sculpting bronzer', category: face_category }
])

eyes_category = Category.find_by(name: 'Eyes')
Product.create([
  { name: 'Eyeshadow Palette', price: 49.99, description: 'Palette with multiple eyeshadow shades', category: eyes_category },
  { name: 'Eyeliner', price: 22.99, description: 'Fine-lined eyeliner for precise strokes', category: eyes_category },
  { name: 'Brow Pencil', price: 19.99, description: 'The edge precision brow pencil', category: eyes_category }
])

lips_category = Category.find_by(name: 'Lips')
Product.create([
  { name: 'Lip Glaze', price: 25.99, description: 'Skincare-infused glaze that hydrates lips', category: lips_category },
  { name: 'Lip Crayon', price: 21.99, description: 'Creamy lipstick that wraps lips in a longwear color', category: lips_category },
  { name: 'Liquid Lipstick', price: 26.99, description: 'High impact + transfer-proof liquid lipstick', category: lips_category }
])
