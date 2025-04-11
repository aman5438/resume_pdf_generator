# app/controllers/pdf_generator_controller.rb
class PdfGeneratorController < ApplicationController
  def resume
    pdf = Prawn::Document.new(page_size: "A4", margin: [30, 30, 30, 30])

    # Header
    pdf.font "Helvetica"
    pdf.text "Aman Agrawal", size: 18, style: :bold, align: :center
    pdf.move_down 5
    pdf.font_size 10
    contact_info = [
      { text: "amanagrawal5438@gmail.com | +91-7000535438 | " },
      { text: "Linkedin", link: "https://linkedin.com/in/aman-agrawal-63345618b", color: "0000FF" },
      { text: " | " },
      { text: "Github", link: "https://github.com/aman5438", color: "0000FF" },
      { text: " | " },
      { text: "Indore, India"}
    ]
    pdf.formatted_text contact_info, align: :center
    pdf.move_down 10
    pdf.stroke_horizontal_rule
    pdf.move_down 20

    # Professional Summary
    pdf.font_size 14
    pdf.text "Professional Summary", style: :bold
    pdf.move_down 5
    pdf.font_size 11
    pdf.text "Results-driven Software Engineer with over 3 years of experience at Codenote IT Solution Pvt Ltd, specializing in Ruby on Rails development. Began as an intern, progressed to a full-time role, and delivered 15+ features across scalable web applications, including the Skanska Project. Skilled in REST APIs, Hotwire, and TDD with RSpec, with a proven track record of improving performance by 25% and achieving 95% test coverage. Holds an MCA from NIT Jamshedpur (CGPA: 7.5/10.0)."
    pdf.move_down 15

    # Skills
    pdf.font_size 14
    pdf.text "Skills", style: :bold
    pdf.move_down 5
    pdf.font_size 11
    pdf.text "- Languages: Ruby, JavaScript, HTML, CSS"
    pdf.text "- Frameworks: Ruby on Rails (6-8), Hotwire (Turbo, Stimulus)"
    pdf.text "- Databases: PostgreSQL, MySQL, SQLite"
    pdf.text "- Tools: Git, Jira, Heroku"
    pdf.text "- Testing: RSpec, Capybara"
    pdf.text "- Methodologies: Agile, TDD, CI/CD"
    pdf.text "- Other: REST APIs, ActiveRecord, Sidekiq,ActiveAdmin"
    pdf.move_down 15

    # Work Experience
    pdf.font_size 14
    pdf.text "Work Experience", style: :bold
    pdf.move_down 10
    pdf.font_size 12
    pdf.text "Software Engineer", style: :bold
    pdf.font_size 10
    pdf.text "Codenote IT Solution Pvt Ltd, Indore, India  |  July 2023 – Present", style: :italic
    pdf.move_down 5
    pdf.font_size 11
    pdf.text "- Developed 5+ Ruby on Rails apps, serving 10+ users with 99.9% uptime."
    pdf.text "- Designed RESTful APIs for e-commerce, cutting latency by 20% via MYSQL optimization."
    pdf.text "- Implemented background job processing with Sidekiq, handling 100+ daily tasks for data syncing."
    pdf.text "- Added Hotwire Turbo Streams for real-time updates in 3 dashboards, boosting satisfaction by 15%."
    pdf.text "- Wrote 100+ RSpec tests, achieving 95% coverage and reducing bugs by 30%."
    pdf.move_down 10
    pdf.font_size 12
    pdf.text "Junior Software Developer (Promoted from Intern)", style: :bold
    pdf.font_size 10
    pdf.text "Codenote IT Solution Pvt Ltd, Indore, India  |  April 2022 – June 2023", style: :italic
    pdf.move_down 5
    pdf.font_size 11
    pdf.text "- Promoted after 6 months, contributing to 3 Rails projects."
    pdf.text "- Built CRUD features with Rails 6 and ActiveAdmin for internal use."
    pdf.text "- Optimized database indexes, improving legacy app performance by 15%."
    pdf.move_down 10
    pdf.font_size 12
    pdf.text "Software Engineering Intern", style: :bold
    pdf.font_size 10
    pdf.text "Codenote IT Solution Pvt Ltd, Indore, India  |  October 2021 – March 2022", style: :italic
    pdf.move_down 5
    pdf.font_size 11
    pdf.text "- Assisted in Rails-based inventory system, adding 5+ features."
    pdf.text "- Wrote 50+ RSpec tests for deployment stability."
    pdf.move_down 15

    # Education
    pdf.font_size 14
    pdf.text "Education", style: :bold
    pdf.move_down 5
    pdf.font_size 12
    pdf.text "Master of Computer Applications (MCA)", style: :bold
    pdf.font_size 10
    pdf.text "National Institute of Technology (NIT), Jamshedpur, India  |  2018 – 2021  |  CGPA: 7.5/10.0", style: :italic
    pdf.move_down 15

    # Projects
    pdf.font_size 14
    pdf.text "Projects", style: :bold
    pdf.move_down 5
    pdf.font_size 12
    pdf.text "Skanska Project (Codenote IT Solution Pvt Ltd, 2023)", style: :bold
    pdf.font_size 11
    pdf.text "- Led Rails 7 app development with Turbo Streams for real-time project management."
    pdf.text "- Designed REST APIs, reducing manual updates by 30%."
    pdf.text "- Deployed on AWS with PostgreSQL, ensuring 99.8% uptime for 500+ users."
    pdf.move_down 5
    pdf.font_size 12


    # Certifications
    pdf.font_size 14
    pdf.text "Certifications", style: :bold
    pdf.move_down 5
    pdf.font_size 11
    certificate_link = [
      { text: "Problem Solving Certificate Hackerank(2020)", link: "https://www.hackerrank.com/certificates/9d22876c6fc4", color: "0000FF"},
      { text: "SQL Certificate – Hackerank (2021)", link: "https://www.hackerrank.com/certificates/19916fd36e40", color: "0000FF"}
    ]
    certificate_link.each do |cert|
      pdf.formatted_text [cert]  # Render each certificate with its link
      pdf.move_down 5           # Move down for the next line
    end

    send_data pdf.render, filename: "aman_agrawal_resume.pdf", type: "application/pdf", disposition: "inline"
  end

  def cover_letter
    pdf = Prawn::Document.new(page_size: "A4", margin: [50, 50, 50, 50])

    # Header
    pdf.font "Helvetica"
    pdf.font_size 12
    pdf.text "Aman Agrawal", style: :bold
    pdf.text "amanagrawal5438@gmail.com | +91-7000535438"
    pdf.text "Indore, India"
    pdf.text Time.now.strftime("%B %d, %Y")
    pdf.move_down 20

    # Recipient
    pdf.text "Hiring Manager", style: :bold
    pdf.text "[Company Name]"
    pdf.text "[Company Address]"
    pdf.text "[City, State, ZIP Code]"
    pdf.move_down 20

    # Greeting
    pdf.font_size 11
    pdf.text "Dear Hiring Manager,"
    pdf.move_down 10

    # Body
    pdf.text "I am thrilled to apply for the Ruby on Rails Software Engineer position at [Company Name]. With over three years of progressive experience at Codenote IT Solution Pvt Ltd—starting as an intern and advancing to Software Engineer—coupled with an MCA from NIT Jamshedpur (CGPA: 7.5/10.0), I bring a strong foundation in Ruby on Rails, REST APIs, and real-time web development to your team."
    pdf.move_down 10
    pdf.text "At Codenote, I began as an intern in 2020, contributing to a Rails-based inventory system with 50+ RSpec tests, then progressed to a Junior Developer role, building CRUD features with ActiveAdmin. Since July 2021, as a Software Engineer, I’ve developed 5+ applications serving 10,000+ users with 99.9% uptime. A key contribution was leading the Skanska Project in 2023, where I built a Rails 8 app with Solid Queue for task scheduling and Turbo Streams for real-time updates, reducing manual updates by 30%. I also designed an e-commerce API that cut checkout latency by 20% through optimized PostgreSQL queries."
    pdf.move_down 10
    pdf.text "My technical toolkit includes Ruby on Rails (6-8), Hotwire, PostgreSQL, Docker, and AWS, complemented by a commitment to TDD (95% code coverage with RSpec). I thrive in Agile environments, mentoring peers and delivering sprints on time. [Company Name]’s emphasis on innovative web solutions aligns with my passion for crafting efficient, user-focused applications, as demonstrated in the Skanska Project."
    pdf.move_down 10
    pdf.text "I’d be delighted to discuss how my skills and growth trajectory can benefit [Company Name]. Please reach me at amanagrawal5438@gmail.com or +91-7000535438. Thank you for your consideration."
    pdf.move_down 20

    # Closing
    pdf.text "Sincerely,"
    pdf.text "Aman Agrawal", style: :bold

    send_data pdf.render, filename: "aman_agrawal_cover_letter.pdf", type: "application/pdf", disposition: "inline"
  end
end