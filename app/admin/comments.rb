ActiveAdmin.register Comment do
  permit_params :user_id, :content, :visible_from, :visible_until, :reported

  index do
    selectable_column
    id_column
    column :user do |comment|
      comment.user.email
    end
    column :content
    column :visible_from
    column :visible_until
    column :reported
    actions
  end

  form(data: {controller: 'comment-form'}) do |f|
    f.semantic_errors *f.object.errors.keys

    script src: asset_pack_path('application.js')

    f.inputs do
      f.input :user_id,
              as: :select,
              include_blank: false,
              collection: User.all.map { |u| [u.email, u.id] }
      f.input :content
      f.input :visible_from,
              as: :datepicker,
              input_html: {
                data: {
                  target: 'comment-form.visible_from'
                }
              }
      f.input :visible_until,
              as: :datepicker,
              input_html: {
                data: {
                  target: 'comment-form.visible_until'
                }
              }
      f.input :reported
    end
    f.actions
  end

end
