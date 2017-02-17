Feature: contact form
  
  Scenario: View login page
    Given User decides to view the archive
    When User accesses the webpage
    Then User sees login page

  Scenario: Logging in with an existing user account
    Given User is on Login page
    When User fills in "Username" with "Uuser"
    And User fills in "Password" with "Upassword"
    And User clicks "Sign In"
    Then User is sent to "User Home Page"
    
  Scenario: Logging in with an existing admin account
    Given Admin is on Login page
    When Admin fills in "Username" with "Auser"
    And Admin fills in "Password" with "Apassword"
    And Admin clicks "Sign In"
    Then Admin is sent to "Admin Home Page"

  Scenario: Logging in without an existing account
    Given User is on Login page
    When User clicks "New Account"
    Then User is sent to "Register New User"
    
  Scenario: Logging in with incorrect username information
    Given User is on Login page
    When User fills in "Username" with "notuser"
    And User clicks "Sign In"
    Then User is sent to "Wrong Credentials Page"
    
  Scenario: Logging in with incorrect username information
    Given User is on Login page
    When User fills in "Password" with "notpassword"
    And User clicks "Sign In"
    Then User is sent to "Wrong Credentials Page"
    
  Scenario: Viewing home page
    Given User is on "User Home Page"
    When User views webpage content
    Then User sees 25 most recent emails
    
  Scenario: Clicking on link
    Given User is on "User Home Page"
    When User clicks "View" of "Post 1"
    Then User is sent to "Post 1" page
    
  Scenario: Going to add a post page
    Given Admin is on "Admin Home Page"
    When Admin clicks on "Add post"
    Then Admin is sent to "Add New Post Page"
    
  Scenario: Adding a post
    Given Admin is on "Add New Post Page"
    When Admiin fills in "Post Title" with "Title"
    And Admin fills in "Post Content" with "contenttttt"
    And Admin clicks on "Submit Post"
    Then Admin is sent to "Added Post Successful Page"
    
  Scenario: Clicking on new link
    Given User is on "User Home Page"
    When User clicks "View" of "Title"
    Then User is sent to "Title" page