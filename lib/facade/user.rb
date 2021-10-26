# frozen_string_literal: true

module Facade
  # Facade is a structural design pattern that provides a simplified
  # interface to a library, a framework, or any other complex set of classes.
  class User
    include HttpModule

    def all
      get(
        'https://jsonplaceholder.typicode.com/users',
        query: { limit: 10, offset: 10 }
      )
    end

    def detail(user_id)
      get("https://jsonplaceholder.typicode.com/users/#{user_id}")
    end
  end
end
