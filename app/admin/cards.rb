ActiveAdmin.register Card do
    permit_params :description, :status

    index do
        selectable_column
        id_column
        column :description
        column :status
        column :created_at
        column :updated_at
        actions
    end

    filter :description
    filter :status
    filter :created_at
    filter :updated_at

    form do |f|
        f.inputs do
            f.input :description
            f.input :status, as: :select, collection: { "To do": "todo", Doing: "doing", Done: "done" }, include_blank: false
        end
        f.actions
    end
end