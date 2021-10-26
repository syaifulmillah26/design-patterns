# frozen_string_literal: true

module AbstractFactory
  # Factory
  class Factory
    def initialize(vehicle_factory)
      # The type of vehicle is passed in
      # and set here. Notice, this is identical
      # to the Strategy pattern. We are varying
      # _all_ of the behavior responsible for
      # generating a vehicle.
      @vehicle_factory = vehicle_factory
    end

    # In the #deliver! method, we are calling the
    # #deliver! method of the
    # factory that has been passed in upon
    # initialization. This Factory class
    # does not have to know what type of deliver
    # is being delivered, but it can be confident
    # that the deliver will go, thanks
    # to the grouping of related objects handled by
    # the vehicle factory being invoked.
    def deliver!
      @vehicle_factory.deliver!
    end
  end
end
