module Admin::PurchasesHelper

  def change_color_status(status)
    colors = {
      'open' => 'bg-yellow-300',
      'requested' => 'bg-purple-300',
      'cancelled' => 'bg-red-300',
      'closed' => 'bg-indigo-300',
      'approved' => 'bg-green-300',
      'processing' => 'bg-gray-300'
    }

    content_tag(:span, class: "#{colors[status]} inline-flex px-2 text-xs font-semibold leading-5 text-green-800 rounded-full") do
      content_tag(:h6, status)
    end
  end

end
