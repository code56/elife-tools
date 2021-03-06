Feature: get references from the document
  In order to extract the references citied in an article
  as a script 
  I will parse the references from the xml file

  Scenario Outline: Count the number of references
    Given I have the document <document>
    When I count the number of references
    Then I count the total as <references>

  Examples:
    | document                    | references
    | elife-kitchen-sink.xml      | 103
    | elife00013.xml              | 105
    | elife_poa_e06828.xml        | 0
    | elife02935.xml              | 59

  Scenario Outline: Count the number of references from a particular year
    Given I have the document <document>
    When I count references from the year <year>
    Then I get the total number of references as <references>
    
  Examples:
    | document                    | year  | references
    | elife-kitchen-sink.xml      | 2003  | 5
    | elife00013.xml              | 1999  | 4
    | elife00013.xml              | 2004a | 1
    
  Scenario Outline: Count the number of references from a particular journal
    Given I have the document <document>
    When I count references from the journal <journal>
    Then I count the total as <references>
    
  Examples:
    | document                    | journal                       | references
    | elife-kitchen-sink.xml      | Anaerobe                      | 1
    | elife00013.xml              | Int J Syst Evol Microbiol     | 17
    | elife00051.xml              | None                          | 6
    
  Scenario Outline: Get references
    Given I have the document <document>
    When I get the references
    And I get the list item <list_item>
    Then I see the string <string>
  
  Examples:
    | document                    | list_item                       | string
    | elife00013.xml              | [0]['publication-type']         | book
    | elife00013.xml              | [0]['etal']                     | None
    | elife00013.xml              | [0]['id']                       | bib1
    | elife00013.xml              | [2]['comment']                     | [epub ahead of print]
    | elife00013.xml              | [9]['etal']                     | True
    | elife00013.xml              | [0]['ref']                      | AgostaWC1992Chemical communicationScientific American PressNew York
    | elife00013.xml              | [0]['publisher_name']           | Scientific American Press
    | elife00013.xml              | [0]['publisher_loc']            | New York
    | elife00013.xml              | [0]['authors'][0]['surname']    | Agosta
    | elife00013.xml              | [0]['authors'][0]['group-type'] | author
    
    | elife00013.xml              | [0]['authors'][0]['given-names']| WC
    | elife00013.xml              | [0]['article_doi']              | 10.7554/eLife.00013
    | elife00013.xml              | [0]['position']                 | 1
    
    | elife00013.xml              | [1]['publication-type']         | journal
    | elife00013.xml              | [1]['ref']                      | AhmedIYokotaAFujiwaraT2007Chimaereicella boritolerans sp nov., a boron-tolerant and alkaliphilic bacterium of the family Flavobacteriaceae isolated from soilInt J Syst Evol Microbiol57986992
    | elife00013.xml              | [1]['authors'][0]['surname']    | Ahmed
    | elife00013.xml              | [1]['authors'][0]['given-names']| I
    | elife00013.xml              | [1]['authors'][1]['surname']    | Yokota
    | elife00013.xml              | [1]['authors'][1]['given-names']| A
    | elife00013.xml              | [1]['year']                     | 2007
    | elife00013.xml              | [1]['article_title']            | Chimaereicella boritolerans sp nov., a boron-tolerant and alkaliphilic bacterium of the family Flavobacteriaceae isolated from soil
    | elife00013.xml              | [1]['source']                   | Int J Syst Evol Microbiol
    | elife00013.xml              | [1]['volume']                   | 57
    | elife00013.xml              | [1]['fpage']                    | 986
    | elife00013.xml              | [1]['lpage']                    | 992
    | elife00013.xml              | [1]['position']                 | 2
    
    | elife-kitchen-sink.xml      | [1]['reference_id']             | 10.1099/ijs.0.64728-0
    | elife-kitchen-sink.xml      | [1]['doi']                      | 10.1099/ijs.0.64728-0
    
    | elife-kitchen-sink.xml      | [9]['publication-type']         | journal
    | elife-kitchen-sink.xml      | [9]['full_article_title']       | The complete genome sequence of <italic>Escherichia coli</italic>\n                        K-12
    | elife-kitchen-sink.xml      | [9]['authors'][1]['suffix']     | III
    | elife-kitchen-sink.xml      | [9]['elocation-id']             | None

    | elife-kitchen-sink.xml      | [12]['doi']                     | 10.1371/journal.pcbi.1000392
    | elife-kitchen-sink.xml      | [12]['elocation-id']            | e1000392
    
    | elife-kitchen-sink.xml      | [53]['comment']                 | pdb.prot5148
    
    | elife-kitchen-sink.xml      | [58]['publication-type']        | other
    
    | elife-kitchen-sink.xml      | [95]['authors'][0]['collab']    | WHO
    | elife-kitchen-sink.xml      | [95]['authors'][0]['group-type']| author
    
    | elife02935.xml              | [6]['publication-type']         | journal
    | elife02935.xml              | [6]['authors'][0]['surname']    | Chinnery
    | elife02935.xml              | [6]['authors'][1]['surname']    | RA
    
    | elife02304.xml              | [69]['publication-type']        | other
    | elife02304.xml              | [69]['comment']                 | PAUP*. Phylogenetic analysis using Parsimony (*and other methods). Version 4 Sinauer Associatesm Sunderland, Massachusetts
    
    | elife00051.xml               | [19]['collab']                 | Institute for Health Metrics and Evaluation
    | elife00051.xml               | [19]['authors'][0]['collab']   | Institute for Health Metrics and Evaluation
    
    | elife02935.xml               | [17]['authors'][0]['collab']   | 1000 Genomes Project Consortium
    | elife02935.xml               | [17]['authors'][0]['surname']  | None
    | elife02935.xml               | [17]['authors'][1]['surname']  | Abecasis
    | elife02935.xml               | [17]['authors'][1]['collab']   | None