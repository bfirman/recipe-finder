# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Removing Old Recipes'
Recipe.destroy_all

puts 'Importing Recipes'

if Rails.env.test?
  recipes =
    [
      { "title": 'Golden Sweet Cornbread', "cook_time": 25, "prep_time": 10,
        "ingredients": ['1 cup all-purpose flour', '1 cup yellow cornmeal',
                        '⅔ cup white sugar', '1 teaspoon salt', '3 ½ teaspoons baking powder', '1 egg',
                        '1 cup milk', '⅓ cup vegetable oil', 'all-spice', 'half-spice'],
        "ratings": 4.74, "cuisine": '', "category": 'Cornbread', "author": 'bluegirl',
        "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2021%2F10%2F26%2Fcornbread-1.jpg' },

      { "title": 'Monkey Bread I', "cook_time": 35, "prep_time": 15,
        "ingredients": ['3 (12 ounce) packages refrigerated biscuit dough', '1 cup white sugar',
                        '2 teaspoons ground cinnamon', '½ cup margarine', '1 cup packed brown sugar',
                        '½ cup chopped walnuts', '½ cup raisins', 'all-spice', 'half-spice'],
        "ratings": 4.74, "cuisine": '', "category": 'Monkey Bread', "author": 'deleteduser',
        "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2018%2F11%2F546316.jpg' },

      { "title": 'Whole Wheat Beer Bread', "cook_time": 50, "prep_time": 10,
        "ingredients": ['1 ½ cups all-purpose flour', '1 ½ cups whole wheat flour',
                        '4 ½ teaspoons baking powder', '1 ½ teaspoons salt', '⅓ cup packed brown sugar',
                        '1 (12 fluid ounce) can or bottle beer', 'all-spice', 'half-spice'],
        "ratings": 4.52, "cuisine": '', "category": 'Quick Bread', "author": 'Betty Latvala',
        "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F9443508.jpg' },

      { "title": 'Winter Squash Rolls', "cook_time": 45, "prep_time": 30,
        "ingredients": ['1 ½ cups cubed winter squash', '1 cup scalded milk', '2 (.25 ounce) packages active dry yeast', '½ cup warm water (110 degrees F/45 degrees C)', '6 cups all-purpose flour', '½ cup white sugar', '2 teaspoons salt', '½ cup shortening', 'all-spice', 'half-spice'], "ratings": 4.71, "cuisine": '', "category": 'Roll and Bun Recipes', "author": 'TRACEY_MITCHELL', "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F784483.jpg' },

      { "title": 'Homemade Flour Tortillas', "cook_time": 45, "prep_time": 15,
        "ingredients": ['4 cups all-purpose flour', '1 teaspoon salt', '2 teaspoons baking powder',
                        '2 tablespoons lard', '1 ½ cups water', 'all-spice', 'half-spice'],
        "ratings": 4.54, "cuisine": '', "category": 'Tortillas', "author": 'LaDonna',
        "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F-0001%2F11%2F30%2F663757.jpg' },

      { "title": 'Brooklyn Style Pizza Dough', "cook_time": 10, "prep_time": 30,
        "ingredients": ['3 cups bread flour, divided, or as needed', '1 cup warm water',
                        '1 tablespoon active dry yeast', '½ teaspoon salt', '2 tablespoons olive oil', 'all-spice'],
        "ratings": 4.0, "cuisine": '', "category": 'Pizza Dough and Crusts', "author": 'Tammi',
        "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F3474709.jpg' },

      { "title": "Diana's Hawaiian Bread Rolls", "cook_time": 15, "prep_time": 20,
        "ingredients": ['1 ½ cups warm water (110 degrees F/45 degrees C)', '1 egg', '1 teaspoon salt',
                        '1 teaspoon vanilla extract', '1 teaspoon lemon extract', '1 tablespoon molasses',
                        '1 tablespoon honey', '5 tablespoons white sugar', '2 tablespoons dry milk powder',
                        '2 tablespoons butter flavored shortening', '4 ½ cups bread flour', '2 teaspoons active dry yeast',
                        'all-spice'],
        "ratings": 4.25, "cuisine": '', "category": 'Bread Machine', "author": 'CHIPPENDALE',
        "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F50654.jpg' },

      { "title": 'Banana Banana Bread', "cook_time": 65, "prep_time": 15,
        "ingredients": ['2 cups all-purpose flour', '1 teaspoon baking soda', '¼ teaspoon salt',
                        '½ cup butter', '¾ cup brown sugar', '2 eggs, beaten', '2 ⅓ cups mashed overripe bananas',
                        'all-spice'],
        "ratings": 4.59, "cuisine": '', "category": 'Banana Bread', "author": 'Shelley Albeluhn',
        "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F-0001%2F11%2F30%2F4565477.jpg' },

      { "title": 'To Die For Blueberry Muffins', "cook_time": 25, "prep_time": 15,
        "ingredients": ['1 ½ cups all-purpose flour', '¾ cup white sugar', '½ teaspoon salt',
                        '2 teaspoons baking powder', '⅓ cup vegetable oil', '1 egg', '⅓ cup milk, or more as needed',
                        '1 cup fresh blueberries', '½ cup white sugar', '⅓ cup all-purpose flour', '¼ cup butter, cubed',
                        '1 ½ teaspoons ground cinnamon', 'all-spice'],
        "ratings": 4.64, "cuisine": '', "category": 'Blueberry Muffins', "author": 'deleteduser',
        "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F03%2F31%2F662790.jpg' },

      { "title": 'Breakfast Pull-Apart Bacon and Egg Bread', "cook_time": 45, "prep_time": 15,
        "ingredients": ['6 slices turkey bacon, cut into small pieces', 'butter-flavored cooking spray',
                        '2 (16 ounce) cans refrigerated biscuit dough', '2 eggs', '¼ cup skim milk', '½ teaspoon salt',
                        '½ teaspoon ground black pepper', '2 cups shredded sharp Cheddar cheese', 'all-spice'],
        "ratings": 5.0, "cuisine": '', "category": 'Breakfast Bread', "author": 'Jacqueline',
        "image": 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F9438466.jpg' }
    ]
else
  io = File.read('tmp/recipes-en.json')
  recipes = JSON.parse(io)
end

Recipe.insert_all(recipes)
