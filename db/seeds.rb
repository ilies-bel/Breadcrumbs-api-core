# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

interview_processes = InterviewProcess.create!([{ process_name: 'My first process' },
                                     { process_name: 'My second process' },
                                     { process_name: 'My third process' }])

business_field = BusinessField.create!({field_name: "Computer science", description: "Doing stuff with computers"})

interview_type = InterviewType.create!({ business_field: business_field,  title: "Entretien telephonique" , description: "A quick call"})

InterviewMilestone.create!( [{interview_process: interview_processes.first, interview_type: interview_type, milestone_name: 'milestone' }] )
