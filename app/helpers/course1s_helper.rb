module Course1sHelper
  def enrollment_button(course1)
    if current_user
      if course1.user == current_user
        link_to "You created this course. View analytics", course1_path(course1)
      elsif course1.enrollments.where(user: current_user).any?
        link_to "You bought this course. Keep learning", course1_path(course1)
      elsif course1.price > 0
        link_to number_to_currency(course1.price), new_course1_enrollment_path(course1), class: "btn btn-warning btn-sm"
      end
    else
      link_to "Free", new_course1_enrollments_path(course1), class: "btn btn-md btn-success"
    end
  end
end
