module JobsHelper
  def job_type(job_type)
    case job_type
    when 'full-time'
      content_tag(:span, 'full-time', class: 'border bg-emerald-500 text-white px-2 rounded')
    when 'part-time'
      content_tag(:span, 'part-time', class: 'border bg-orange-500 text-white px-2 rounded')
    when 'contract'
      content_tag(:span, 'contract', class: 'border bg-blue-500 text-white px-2 rounded')
    when 'internship'
      content_tag(:span, 'internship', class: 'border bg-green-500 text-white px-2 rounded')
    when 'freelance'
      content_tag(:span, 'freelance', class: 'border bg-red-500 text-white px-2 rounded')
    when 'volunteer'
      content_tag(:span, 'volunteer', class: 'border bg-purple-500 text-white px-2 rounded')
    end
  end

  def job_level(job_level)
    case job_level
    when 'entry'
      content_tag(:span, 'Entry', class: 'label label-primary')
    when 'mid'
      content_tag(:span, 'Mid', class: 'label label-success')
    when 'senior'
      content_tag(:span, 'Senior', class: 'label label-info')
    when 'manager'
      content_tag(:span, 'Manager', class: 'label label-warning')
    when 'executive'
      content_tag(:span, 'Executive', class: 'label label-danger')
    end
  end

  def job_author(job)
    user_signed_in? && current_user.id == job.user_id
  end
end
