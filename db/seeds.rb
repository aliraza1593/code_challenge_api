# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Challenge.create(title: 'Code Marathon', description: 'A 48-hour coding marathon for all levels',
                 start_date: '2024-11-01', end_date: '2024-11-03')
Challenge.create(title: 'Bug Bounty', description: 'Find and fix bugs in open source projects',
                 start_date: '2024-11-05', end_date: '2024-11-07')
Challenge.create(title: 'UI Design Challenge', description: 'Design a user-friendly interface for a mock application',
                 start_date: '2024-11-10', end_date: '2024-11-12')
Challenge.create(title: 'Data Science Hack', description: 'Work with datasets to extract insights and create models',
                 start_date: '2024-11-15', end_date: '2024-11-17')
Challenge.create(title: 'Game Development Sprint', description: 'Develop a basic game using Unity or Unreal Engine',
                 start_date: '2024-11-20', end_date: '2024-11-22')
Challenge.create(title: 'Machine Learning Challenge', description: 'Build a predictive model for a dataset',
                 start_date: '2024-11-25', end_date: '2024-11-27')
Challenge.create(title: 'API Integration Challenge',
                 description: 'Integrate with external APIs to fetch and display data', start_date: '2024-12-01', end_date: '2024-12-03')
Challenge.create(title: 'Full-stack Web App', description: 'Create a full-stack web application using Rails',
                 start_date: '2024-12-05', end_date: '2024-12-07')
Challenge.create(title: 'Responsive Design Sprint', description: 'Create a mobile-friendly and responsive web layout',
                 start_date: '2024-12-10', end_date: '2024-12-12')
Challenge.create(title: 'Ruby on Rails Code Challenge', description: 'Build a CRUD application using Rails',
                 start_date: '2024-12-15', end_date: '2024-12-17')
