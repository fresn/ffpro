class CustomerDetail < ApplicationRecord
  before_update {self.email == current_customer.email or !current_admin_user.nil?}
end
