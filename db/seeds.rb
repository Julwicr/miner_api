require 'faker'

user1 = User.create!(username: 'Miner01',
                    password: 'password',
                    first_name: 'John',
                    last_name: 'Doe',
                    telephone: 010100100110,
                    email: 'johndoe@miner.com')

UserAddress.create!(user: user1,
                   address: 'Labastrasse 12',
                   city: 'Berlin',
                   postal_code: '10545',
                   country: 'Germany',
                   telephone: 010200200220)

cat_tool = ProductCategory.create!(name: 'Tool', description: 'From the pick to the shovel, our best selection of tools that will make you more efficient.')
cat_gear = ProductCategory.create!(name: 'Gear', description: 'All you need to wear to be the most robust, undetectable miner you could ever dream to be.')
cat_enchantment = ProductCategory.create!(name: 'Enchantment', description: 'Large range of selection from the best quality enchantments.')
cat_block = ProductCategory.create!(name: 'Block', description: 'All you need to build anything, yes, anything.')
cat_food = ProductCategory.create!(name: 'Food', description: 'Starve no more with our high nutritive and delicious food selection.')

rnd_inventory = (1..350).to_a
inventories = []

25.times do
  product_invent = ProductInventory.create!(quantity: rnd_inventory.sample)
  inventories.push(product_invent)
end

# Creating products

article_number = 01
rnd_price = (1..99).to_a
inventory_count = 0

# Creating block products

img_block = ['https://static.wikia.nocookie.net/minecraft_gamepedia/images/2/2d/Plains_Grass_Block.png/revision/latest?cb=20190525093706',
             'https://static.wikia.nocookie.net/minecraft_gamepedia/images/3/31/Block_of_Netherite_JE1_BE1.png/revision/latest?cb=20200320021504',
             'https://static.wikia.nocookie.net/minecraft_gamepedia/images/2/26/Block_of_Redstone_JE2_BE2.png/revision/latest?cb=20191230030530',
             'https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/08/Diorite.png/revision/latest?cb=20220112085641',
             'https://static.wikia.nocookie.net/minecraft_gamepedia/images/7/7d/Slime_Block_LCE.png/revision/latest?cb=20200503092235',
             'https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/0b/Block_of_Emerald_JE4_BE3.png/revision/latest?cb=20200226013452',
             'https://static.wikia.nocookie.net/minecraft_gamepedia/images/3/3b/Honeycomb_Block_JE1_BE1.png/revision/latest?cb=20200124200218',
             'https://static.wikia.nocookie.net/minecraft/images/9/9d/BlockOfGoldNew.png/revision/latest?cb=20191012230400',
             'https://static.wikia.nocookie.net/minecraft_gamepedia/images/3/37/Light_Blue_Wool_JE3_BE3.png/revision/latest?cb=20200315193219',
             'https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/02/Spruce_Leaves.png/revision/latest/scale-to-width-down/250?cb=20220417090102']
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
                img_path: 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/3/3f/Iron_Pickaxe_JE2_BE1.png/revision/latest?cb=20200127071115',
                article_number: article_number)
article_number += 1
inventory_count += 1

Product.create!(name: 'Diamond axe',
  description: "One of the best axe you could find around.",
  price: rnd_price.sample,
  product_category: cat_tool,
  product_inventory: inventories[inventory_count],
  img_path: 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/4/40/Diamond_Axe_JE3_BE3.png/revision/latest?cb=20200226193844',
  article_number: article_number)
article_number += 1
inventory_count += 1

Product.create!(name: 'Golden shovel',
  description: "Nothin better to show off.",
  price: rnd_price.sample,
  product_category: cat_tool,
  product_inventory: inventories[inventory_count],
  img_path: 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/c/c9/Golden_Shovel_JE3_BE2.png/revision/latest/scale-to-width-down/160?cb=20200217235415',
  article_number: article_number)
article_number += 1
inventory_count += 1

# create gears

Product.create!(name: 'Leather pants',
  description: "Just don't think about those poor rabbits, enjoy the warm feeling of this pants.",
  price: rnd_price.sample,
  product_category: cat_gear,
  product_inventory: inventories[inventory_count],
  img_path: 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/08/Leather_Pants_JE1_BE1.png/revision/latest?cb=20190913142655',
  article_number: article_number)
article_number += 1
inventory_count += 1

Product.create!(name: 'Diamond helmet',
  description: "Best protection for your brain.",
  price: rnd_price.sample,
  product_category: cat_gear,
  product_inventory: inventories[inventory_count],
  img_path: 'https://static.wikia.nocookie.net/minecraft_gamepedia/images/8/87/Diamond_piglin_helmet.png/revision/latest?cb=20200219032358',
  article_number: article_number)
article_number += 1
inventory_count += 1
