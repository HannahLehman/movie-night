require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # def setup defines an instance variable so that you don't have to create as many fixtures.
  def setup
    @event = events(:january)
  end

  test "has a valid fixture" do 
    assert @event.valid?
  end

  should validate_presence_of(:occurs_at)

  # Same as above ^^
  # test "requires a date and time" do
  #   # Refer to instance variable and just change the .occurs_at parameter
  #   @event.occurs_at = nil
  #   refute @event.valid?
  # end

  should validate_presence_of(:location)

  # Same as above ^^
  # test "requires a location" do
  #   # Refer to instance variable and just change the .occurs_at parameter
  #   @event.location = nil
  #   refute @event.valid?

  #   @event.location = ""
  #   refute @event.valid?
  # end


  # test "does not allow two events to occur at the same place at the same time" do
  # end

  # Same as above ^^

  should validate_uniqueness_of(:location).
    scoped_to(:occurs_at).
    with_message('an event is already scheduled there at that time').
    case_insensitive

end
