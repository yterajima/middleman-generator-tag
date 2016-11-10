Feature: insert generator tag

  Scenario: Insert meta tag into head
    Given a fixture app "tag-app"
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And the file "build/index.html" should contain '<meta name="generator" content="Middleman v'

  Scenario: Insert meta tag into head on lang="ja" html
    Given a fixture app "lang-ja-app"
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And the file "build/index.html" should contain '<meta name="generator" content="Middleman v'
