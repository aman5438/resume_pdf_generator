# Resume Generator

This is a Ruby on Rails application that generates a professional, ATS-optimized PDF resume and cover letter for Aman Agrawal, a Software Engineer with over 3 years of experience at Codenote IT Solution Pvt Ltd. The project uses the Prawn gem to create a clean, visually appealing PDF with clickable links for LinkedIn, GitHub, and certifications.

## Features
- **ATS-Friendly**: Structured with standard headings and plain text for seamless parsing by Applicant Tracking Systems.
- **Clickable Links**: Includes hyperlinks for LinkedIn, GitHub, and Hackerrank certifications using Prawn’s `formatted_text`.
- **Professional Design**: One-page layout with Helvetica font, centered header, and consistent spacing for readability.
- **Dynamic Content**: Showcases my work experience (Intern → Junior → Engineer), skills (Ruby on Rails, Hotwire, etc.), projects (Skanska Project, E-Commerce API), and certifications.
- **Customizable**: Easily editable to adjust content, spacing, or add more sections (e.g., for a two-page resume).

## Tech Stack
- **Ruby**: 3.4.0 (assumed based on Rails 8 compatibility)
- **Rails**: 8.0
- **Prawn**: Ruby gem for PDF generation
- **Deployment**: Local server (`bin/rails s`)

## Installation
1. Clone the repository:
  git clone https://github.com/aman5438/resume-generator.git
  cd resume-generator
2. Install Dependencies
  bundle install
3. Run server
  bin/rails s

Usage
Access the resume at: http://localhost:3000/pdf_generator/resume
Access the cover letter at: http://localhost:3000/pdf_generator/cover_letter
PDFs are generated on-the-fly and downloadable with clickable links for LinkedIn, GitHub, and Hackerrank certificates.

Project Structure
app/controllers/pdf_generator_controller.rb: Handles PDF generation logic for resume and cover letter.
Uses Prawn to format text, add links, and ensure a professional layout.
Example Output
Resume: Highlights my 3+ years at Codenote, Skanska Project responsibilities, and technical skills (Rails 8, Hotwire, AWS).
Cover Letter: Tailored for Ruby on Rails Software Engineer roles, referencing my experience and projects.
Customization
Edit pdf_generator_controller.rb to update personal details, add projects, or adjust design (e.g., font size, spacing).
Extend to two pages by increasing move_down values or adding more content.