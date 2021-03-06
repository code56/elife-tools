Feature: Get categories from the document
  In order to use the categories of this article
  as a script 
  I will parse the category from the xml file
  
  Scenario Outline: Count the number of categories
    Given I have the document <document>
    When I count the number of category
    Then I count the total as <count>
  
  Examples:
    | document                    | count
    | elife-kitchen-sink.xml      | 2     
    | elife00013.xml              | 1       
    | elife_poa_e06828.xml        | 2
    | elife02935.xml              | 1
    

  Scenario Outline: Get category
    Given I have the document <document>
    When I get the category
    And I get the list item <list_item>
    Then I see the string <string>
  
  Examples:
    | document                    | list_item | string
    | elife-kitchen-sink.xml      | [0]       | Cell biology
    | elife-kitchen-sink.xml      | [1]       | Computational and systems biology
    | elife00013.xml              | [0]       | Cell biology
    | elife_poa_e06828.xml        | [0]       | Developmental biology and stem cells
    | elife_poa_e06828.xml        | [1]       | Neuroscience
    | elife02935.xml              | [0]       | Genomics and evolutionary biology