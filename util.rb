# Some of my utility methods
def get_class_name_from_filename(filename)
  filename.split('_').collect(&:capitalize).join.split('.')[0]
end

def get_new_class_object_from_filename(filename)
  return Object.const_get(get_class_name_from_filename(filename)).new
end
