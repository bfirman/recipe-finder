# frozen_string_literal: true

class Recipe < ApplicationRecord
  DEFAULT_IMAGE_SIZE = '300x300'

  serialize :ingredients, Array
end
