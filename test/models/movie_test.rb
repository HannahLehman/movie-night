require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  should validate_presence_of(:title)
  should validate_presence_of(:url)

end
