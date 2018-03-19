# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
  "SELECT projects.title, SUM(pledges.amount) FROM pledges
  JOIN projects on pledges.project_id = projects.id
  GROUP BY pledges.project_id ORDER BY(projects.title) ASC"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"SELECT users.name, users.age, SUM(pledges.amount) FROM pledges
JOIN users on pledges.user_id = users.id
GROUP BY pledges.user_id ORDER BY users.name ASC"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT projects.title, sum(pledges.amount) -projects.funding_goal FROM pledges
JOIN projects ON projects.id = pledges.project_id
GROUP BY projects.id HAVING sum(pledges.amount) >= projects.funding_goal "
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"SELECT users.name, sum(pledges.amount) FROM pledges
JOIN users ON users.id = pledges.user_id
GROUP BY users.id ORDER BY pledges.amount"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"Write your SQL query Here"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"Write your SQL query Here"
end
