Feature: Nopcommerce Registration functionality
  Background: User is on Nopcommerce Registration page
      Given  User open the Google Chrome Browser
      And    User open the Url http://demo.nopcommerce.com/register
      And    User is on Nopcommerce Registration page
   Scenario: User should not be able to register with invalid data on mandatory field of registration field
       When User enter first name "<First name>"
       And  User enter last name "<Last name>"
       And User enter Email address "<Email>"
       And user enter Password "<Password>"
       And User enter confirm password "<confirm password>"
       And User click on Register button
       Then User see an eror message "<invalid data>"
       And User is not able to register
       Examples:
        |First Name | Last Name | Email               |Password      | Confirm Password | error message                    |
        |           | Krishan   |radhekrishna@vraj.com|Imwithu       |Imwithu           |please enter First Name           |
        |Radhe      |           |radhekrishna@vraj.com|Imwithu       |Imwithu           |please enter LAst Name            |
        |Radhe      |Krishan    |                     |Imwithu       |Imwithu           |please enter valid email          |
        |Radhe      |Krishan    |radhekrishan@vraj.com|              |Imwithu           |password required                 |
        |Radhe      |Krishan    |radhekrishan@vraj.com|Imwithu       |                  |Confirm password is required      |
        |Radhe      |Krishan    |radhekrishan@vraj.com|Imwithu       |Urwithme          |password and confirm password not matching |
        |Radhe      |Krishan    |radhekrishan@vraj.com|unir1         |unir1             |minimum 6 character required for password  |


     Scenario: User should be able to select anhy one radio button from Gender label of your personal details section
       Given User is on Gender label of personal detail section
       When  user select "Male" radio button
       And   User select "Femail" radio button
       Then  User is able to select only one of radio button

    Scenario outline:  User should be able to select Day, Month and Year from  drop down list of Date of Birth field
      Given USer is on Date of birth field of Your personal detail section
      When user select Day "<DAy>"
      And  USer Select month "<Month>"
      And User Select Yeat "<Year>"
      Then USer is able to select day. month and year from drop down list

      Examples:
      |Day|Month|YEar|
      |01 |March|2001|

      Scenario: user should be able to check and uncheck the newsletter box on options section
        Given User is on newsletter label on options section
        When USer click on newsletter checkbox
        And User again click newsletter checkbox
        Then USer was able to optin or optout in newsletter option box

     Scenario: User should be able to register with valid mandatory field data on registration page
       When User enter frist name "Radhe"
       And User enter last name "Krishan"
       And User enter eamil "Radhekrishan@vraj.com"
       And USer enter password "Imwithu"
       And User confirm password "Imwithu"
       And User click on Register Button
       Then User can register successfully





