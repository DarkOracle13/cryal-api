require 'sequel'

module Cryal
    class User < Sequel::Model
        one_to_many :routes
        
        def to_json(*args)
            {
                user_id: user_id,
                username: username,
                email: email,
                password_hash: password_hash
            }.to_json(*args)
        end
    end
end