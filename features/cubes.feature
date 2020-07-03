Feature: Creating cubes
  As a data engineer.
  I want to scrape metadata and transform spreadsheets into data cubes.
  Data cubes are represented as Tidy CSV and CSV-W metadata.

  Scenario: Output a single cube entity
    Given I want to create datacubes from the seed "seed-for-cube-test-without-mapping.json"
    And I specifiy a datacube named "test cube 1" with data "test-data-1.csv" and a scrape using the seed "seed-temp-scrape-quarterly-balance-of-payments.json"
    Then the datacube outputs can be created
    # The next one is overlly specific for BDD but necessary while we're still stuck with a .trig file
    And the output metadata references the correct number of namespaces

  Scenario: Output multiple cube entities
    Given I want to create datacubes from the seed "seed-for-cube-test-without-mapping.json"
    And I specifiy a datacube named "test cube 1" with data "test-data-1.csv" and a scrape using the seed "seed-temp-scrape-quarterly-balance-of-payments.json"
    And I specifiy a datacube named "test cube 2" with data "test-data-1.csv" and a scrape using the seed "seed-temp-scrape-quarterly-balance-of-payments.json"
    And I specifiy a datacube named "test cube 3" with data "test-data-1.csv" and a scrape using the seed "seed-temp-scrape-quarterly-balance-of-payments.json"
    And I specifiy a datacube named "test cube 4" with data "test-data-1.csv" and a scrape using the seed "seed-temp-scrape-quarterly-balance-of-payments.json"
    Then the datacube outputs can be created
    # The next one is overlly specific for BDD but necessary while we're still stuck with a .trig file
    And the output metadata references the correct number of namespaces

  Scenario: Output the expected CSV-W metadata schema
    Given I want to create datacubes from the seed "seed-temp-scrape-quarterly-balance-of-payments.json"
    And I specifiy a datacube named "Quarterly Balance of Payments" with data "quarterly-balance-of-payments.csv" and a scrape using the seed "seed-temp-scrape-quarterly-balance-of-payments.json"
    Then the csv-w schema for "Quarterly Balance of Payments" matches "quarterly-balance-of-payments.csv-schema.json"
