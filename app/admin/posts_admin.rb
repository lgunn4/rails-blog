Trestle.resource(:posts) do
  menu do
    item :posts, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  
  form do |post|
    text_field :title
    collection_select :category_ids, Category.all, :id, :name, { label: "Category" }, { multiple: true }
    
    row do
      col { check_box :pinned}
      col { check_box :published}
      col { datetime_field :updated_at }
      col { datetime_field :created_at }
    end
    
    editor :description
    editor :content
  
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:post).permit(:name, ...)
  # end
end
