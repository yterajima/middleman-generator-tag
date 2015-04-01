Feature: middleman-generator-tag is activated

  Scenario: Activate middleman-youtube
    Given a fixture app "empty-app"
    And a file named "config.rb" with:
      """
      activate :generator_tag
      """
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And the output should not contain "Unknown Extension: generator_tag"

  Scenario: Activate middleman-youtube using block
    Given a fixture app "empty-app"
    And a file named "config.rb" with:
      """
      activate :generator_tag do |g|
      end
      """
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And the output should not contain "Unknown Extension: generator_tag"
