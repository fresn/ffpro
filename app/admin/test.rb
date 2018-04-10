ActiveAdmin.register_page "Test" do
  @user=UnitBackend.new
  content do
    # your content
    form @user do |f|
      f.inputs do
        f.input :name
        f.input :kind
        f.input :ToDefaultRate
      end
      f.actions do
        f.action :submit
        f.action :cancel
      end
    end
  end

end
