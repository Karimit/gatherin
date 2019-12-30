require_dependency(Gatherin::Core::Engine.root.join("app", "models", "gatherin", "user").to_s)

module Gatherin
  module Auth
    module AuthenticatableUser
      extend ActiveSupport::Concern

      included do
        devise :database_authenticatable, :registerable, :confirmable,
               :recoverable, :validatable, :lockable, stretches: 13

        has_many :access_grants,
                 class_name: "Doorkeeper::AccessGrant",
                 foreign_key: :resource_owner_id,
                 dependent: :delete_all # or :destroy if you need callbacks

        has_many :access_tokens,
                 class_name: "Doorkeeper::AccessToken",
                 foreign_key: :resource_owner_id,
                 dependent: :delete_all # or :destroy if you need ca

        module ClassMethods
          def reconfirmable
            false
          end
        end
      end
    end
  end
end

Gatherin::User.include Gatherin::Auth::AuthenticatableUser
