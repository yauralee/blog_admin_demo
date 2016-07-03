ActiveAdmin.register Article do
  permit_params :title, :text, :language, :category
  actions :all

  filter :title
  filter :text
  filter :language, as: :select, collection: %w(Chinese English French)
  filter :category, as: :select, collection: %w(literature psychology math physical)

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :title
      f.input :text
      f.input :language, as: :select, collection: %w(Chinese English French)
      f.input :category, as: :select, collection: %w(literature psychology math physical)
    end
    f.actions
  end

  controller do
    def update
      super
        @article.save
    end
  end
end
