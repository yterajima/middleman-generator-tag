Feature: insert generator tag

  Scenario: Insert meta tag into head
    Given a fixture app "tag-app"
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And the file "build/index.html" should contain '<meta name="generator" content="Middleman v'
