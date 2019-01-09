class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  Clearance::Controller
end

