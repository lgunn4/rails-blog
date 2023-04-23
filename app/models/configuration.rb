class Configuration < ApplicationRecord
    validate :there_can_only_be_one
    validates :name, presence: true, uniqueness: true
    validates :bio, presence: true
    validates :profile_picture, presence: true

    def there_can_only_be_one
        errors[:base] << 'There can only be one' if Configuration.count > 0
    end
end
