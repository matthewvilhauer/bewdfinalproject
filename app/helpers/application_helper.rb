module ApplicationHelper
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + "<a href='#' onclick='remove_fields(this); return false;'>Remove</a>"
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    "<a href='#' onclick='add_fields(this)'>#{name}</a>"
  end
end