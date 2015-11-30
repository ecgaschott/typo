Feature: Create and Edit Categories
  As an admin
  I want to create and edit categories 
  So that I can sort blog posts appropriately
  
   Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: Create a category
    Given I am on the dashboard page
    When I press "Categories"
    And I fill in "Name" with "News"
    And I fill in "Description" with "lots of info about things"
    And I press "Save"
    Then I should be on the category page
    And I should see "News"
    And I should see "lots of info about things"
    
  Scenario: Edit a category
    Given I am on the category page
    When I fill in "Name" with "News"
    And I fill in "Description" with "lots of info about things"
    And I press "Save"
    And I press "Edit"
    And I fill in "Keywords" with "important"
    And I press "Save"
    Then I should see "News"
    And I should see "important"
  
    