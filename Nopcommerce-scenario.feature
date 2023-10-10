Feature:Demo Nopcommer's top menu acceptance criteria
  As a user i would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    Given USer is on Books catefory page
    When  User type URL "http://demo.nopcommerce.com"
    And   USer click on enter
    Then  User is on given URL

  Scenario: verify that user can navigate to books category
    When user is on given URl
    And  Click on books tab on top menu
    Then User is navigated to books catergory page

  Scenario: Verify that user can see the books category page with filters and list of products
    When User is on give URl
    And Click on Book tab on top menu
    And Check filters and list tab
    Then Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see "Sort by" filter on book category page
    Wehn user is on books category page
    And check "sort by" filter
    Then "sort by" filter is accessible

  Scenario: User can see "Grid"tab on books category page
    When user is on books category page
    And check "grid" tab
    Then "Grid" tab is confirmed

  Scenario: User can see "list"  tab on books category page
    When User is on books category page
    And check "List" tab
    Then "list" tab is confirmed

  Scenario: USer can see "name: A TO Z" selection in "sortby" filter
    When User in on  books category page
    And Click on "sort by" filter
    And Check on Name:A To Z from drop down options
    Then Name: A to Z selection is present in Sortby Filter

  Scenario:Confirm that user can see "Name:A TO Z" as first option on sort by filter
    When user is on book category page
    and click on "sort by" filter
    And Check that "Name: A TO Z" is first in drop down selection
    Then "Name: A To Z" is first option in order

  Scenario:Verify that user can see "Name: A TO Z " filter is funcioning as ex[ected(note: Products are filtered in alphabetical order)
    When user is on books category page
    And  user click on "sort by" filter
    And  user select "Name: A TO Z " filter
    Then All products are displayed in alphabetical order







