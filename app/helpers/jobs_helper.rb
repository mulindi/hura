module JobsHelper
  def job_type(job_type)
    case job_type
    when 'full-time'
      content_tag(:span, 'Full Time', class: 'label label-success')
    when 'part-time'
      content_tag(:span, 'Part Time', class: 'label label-info')
    when 'contract'
      content_tag(:span, 'Contract', class: 'label label-warning')
    when 'internship'
      content_tag(:span, 'Internship', class: 'label label-warning')
    when 'freelance'
      content_tag(:span, 'Freelance', class: 'label label-primary')
    when 'volunteer'
      content_tag(:span, 'Volunteer', class: 'label label-danger')
    end
  end

  def job_author(job)
    user_signed_in? && current_user.id == job.user_id
  end
end
