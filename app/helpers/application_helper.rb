module ApplicationHelper
  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end

  def is_pedagogie_montessori_secion?(paths_to_check)
    return 'active' if paths_to_check.include? request.path
    ''
  end
end
