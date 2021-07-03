class Purchase < ApplicationRecord
  enum status: { open: 0, requested: 1, cancelled: 2, closed: 3,  approved: 4, processing: 5 }

  belongs_to :user, optional: true

  def description_status
    case status
    when 0
      "Open"
    when 1
      "Request"
    when 2
      "Cancelled"
    when 3
      "Closed"
    when 4
      "Approved"
    when 5
      "Processing"
    end

  end
end
