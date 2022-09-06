require 'faker'

# user1 = User.create!(username: 'Miner01',
#                     password: 'password',
#                     first_name: 'John',
#                     last_name: 'Doe',
#                     telephone: 010100100110,
#                     email: 'johndoe@miner.com')

# UserAddress.create!(user: user1,
#                    address: 'Labastrasse 12',
#                    city: 'Berlin',
#                    postal_code: '10545',
#                    country: 'Germany',
#                    telephone: 010200200220)

cat_tool = ProductCategory.create!(name: 'Tool', description: 'From the pick to the shovel, our best selection of tools that will make you more efficient.')
cat_gear = ProductCategory.create!(name: 'Gear', description: 'All you need to wear to be the most robust, undetectable miner you could ever dream to be.')
cat_enchantment = ProductCategory.create!(name: 'Enchantment', description: 'Large range of selection from the best quality enchantments.')
cat_block = ProductCategory.create!(name: 'Block', description: 'All you need to build anything, yes, anything.')
cat_food = ProductCategory.create!(name: 'Food', description: 'Starve no more with our high nutritive and delicious food selection.')

rnd_inventory = (1..350).to_a
inventories = []

20.times do
  product_invent = ProductInventory.create!(quantity: rnd_inventory.sample)
  inventories.push(product_invent)
end

# Creating products

article_number = 1
rnd_price = (1..99).to_a
inventory_count = 0

# Creating block products

img_block = ['https://res.cloudinary.com/julwicr/image/upload/v1661639956/development/pngegg_1_vfmnph.png',
             'https://res.cloudinary.com/julwicr/image/upload/v1661639953/development/pngegg_rd3abd.png',
             'https://res.cloudinary.com/julwicr/image/upload/v1661639952/development/pngegg_8_ebpket.png',
             'https://res.cloudinary.com/julwicr/image/upload/v1661639951/development/pngegg_6_ddwmqm.png',
             'https://res.cloudinary.com/julwicr/image/upload/v1661639950/development/pngegg_5_peq3x4.png',
             'https://res.cloudinary.com/julwicr/image/upload/v1661639950/development/pngegg_3_ih1g5m.png',
             'https://res.cloudinary.com/julwicr/image/upload/v1661639950/development/pngegg_7_tbg6kk.png',
             'https://res.cloudinary.com/julwicr/image/upload/v1661639950/development/pngegg_4_ns4532.png',
             'https://res.cloudinary.com/julwicr/image/upload/v1661639949/development/pngegg_2_vxacj4.png',
             'https://res.cloudinary.com/julwicr/image/upload/v1661640423/development/pngwingdf_vyexce.png']
img_count = 0

# create blocks

10.times do
  block_name = Faker::Games::Minecraft.block
  Product.create!(name: block_name,
                  description: "Isn't this #{block_name} block what you were always looking for ?",
                  price: rnd_price.sample,
                  product_category: cat_block,
                  product_inventory: inventories[inventory_count],
                  img_path: img_block[img_count],
                  article_number: article_number)
  article_number += 1
  inventory_count += 1
  img_count += 1
end

# create tools

Product.create!(name: 'Iron pickaxe',
                description: "A basic, still usefull to have one around",
                price: rnd_price.sample,
                product_category: cat_tool,
                product_inventory: inventories[inventory_count],
                img_path: 'https://res.cloudinary.com/julwicr/image/upload/v1661675348/development/kindpng_280795_ljtwvs.png',
                article_number: article_number)
article_number += 1
inventory_count += 1

Product.create!(name: 'Diamond axe',
  description: "One of the best axe you could find around.",
  price: rnd_price.sample,
  product_category: cat_tool,
  product_inventory: inventories[inventory_count],
  img_path: 'https://res.cloudinary.com/julwicr/image/upload/v1661675349/development/kindpng_799141_auenlx.png',
  article_number: article_number)
article_number += 1
inventory_count += 1

Product.create!(name: 'Golden shovel',
  description: "Nothin better to show off.",
  price: rnd_price.sample,
  product_category: cat_tool,
  product_inventory: inventories[inventory_count],
  img_path: 'https://res.cloudinary.com/julwicr/image/upload/v1661675348/development/PngItem_209457_hy8o8p.png',
  article_number: article_number)
article_number += 1
inventory_count += 1

# create gears

Product.create!(name: 'Leather pants',
  description: "Just don't think about those poor rabbits, enjoy the warm feeling of this pants.",
  price: rnd_price.sample,
  product_category: cat_gear,
  product_inventory: inventories[inventory_count],
  img_path: 'https://res.cloudinary.com/julwicr/image/upload/v1661675348/development/apngwing_fv5zv6.png',
  article_number: article_number)
article_number += 1
inventory_count += 1

Product.create!(name: 'Diamond helmet',
  description: "Best protection for your brain.",
  price: rnd_price.sample,
  product_category: cat_gear,
  product_inventory: inventories[inventory_count],
  img_path: 'https://res.cloudinary.com/julwicr/image/upload/v1661675348/development/kindpng_581857_fkunzv.png',
  article_number: article_number)
article_number += 1
inventory_count += 1

# enchant

Product.create!(name: 'Fortune',
  description: "More ore for you !",
  price: rnd_price.sample,
  product_category: cat_enchantment,
  product_inventory: inventories[inventory_count],
  img_path: 'https://res.cloudinary.com/julwicr/image/upload/v1662196714/development/bbook_tdrkin.png',
  article_number: article_number)
article_number += 1
inventory_count += 1

Product.create!(name: 'Infinity',
  description: "Never run out of arrow.",
  price: rnd_price.sample,
  product_category: cat_enchantment,
  product_inventory: inventories[inventory_count],
  img_path: 'https://res.cloudinary.com/julwicr/image/upload/v1662196714/development/bbook_tdrkin.png',
  article_number: article_number)
article_number += 1
inventory_count += 1

Product.create!(name: 'Looting',
  description: "More loot for you !",
  price: rnd_price.sample,
  product_category: cat_enchantment,
  product_inventory: inventories[inventory_count],
  img_path: 'https://res.cloudinary.com/julwicr/image/upload/v1662196714/development/bbook_tdrkin.png',
  article_number: article_number)
article_number += 1
inventory_count += 1

# food

Product.create!(name: 'Potato',
  description: "Simple but effective.",
  price: 2,
  product_category: cat_food,
  product_inventory: inventories[inventory_count],
  img_path: 'https://res.cloudinary.com/julwicr/image/upload/v1662196418/development/pootato_r8tg60.png',
  article_number: article_number)
