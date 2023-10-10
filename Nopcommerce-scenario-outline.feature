Feature: Book Catergory
  Background: I should be able to see homepage
    Given I enter url "http://demo.nopcommerce.com/" in browser
    And I am on homepage for nopcommerce

    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      When I am on home page
      Then I should be able to see top menu tabs with "<categories>"

      Examples:
      | Catergories        |
      | Computer           |
      | Electronics        |
      | Apparel            |
      | Digital downloads  |
      | Books              |
      | Jewellery          |
      | Gift card          |

    Scenario Outline: I should be able to see book page with filters
      When I select book category from top menu tab on nopcommerce home page
      Then I should be able to navigate book category
      And I Should be able to see "<filters>"

      Examples:
      | Filters  |
      |Short by  |
      |Display   |
      |The Grid  |
      |List Tab  |

      Scenario Outline: I should be able to see list of terms for each filter
        When I click on "<filter>"
        Then I should be able to see "<list>" in dropdown menu

        Examples:
        | filters | list                                                                            |
        | sort by | Name: A to Z, Name: Z to A, Price: low to high, Price: high to low, Created on  |
        |Display  | 3, 6, 9                                                                         |

        Scenario Outline: I should be able to choose any filter options from the list
          When I click on "<filters>"
          And  I click on "<options>"
          And  I should be able to choose any filter option from the list
          Then I should be able to see "<results>"

          Examples:
          |filters   | option           |result                                                           |
          |Sort by   |Name: A to Z      | sorted product with the name in alphabetical order of A TO Z    |
          |Sort by   |Name: Z to A      | sorted product with the name in alphabetical order of Z to A    |
          |Sort by   |price: low to high| Sorted product with price in ascending order                    |
          |Sort by   |price: high to low| Sorted product with price in descending order                   |
          |Display   |3                 | 3 products in a page is displayed                               |
          |Display   |6                 | 6 products in a page is displayed                               |
          |Display   |9                 | 9 products in a page is displayed                               |

          Scenario Outline: I should be able to see product display format according to display format type as per given picture in SRS doc.
            When I click on "<display format icon>"
            Then I should be able to see product display format according to SRS Doc Display format pic

            Examples:
            | display format icon |
            | Grid                |
            | List                |



