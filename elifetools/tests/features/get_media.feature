Feature: Get media tag data from the document
  In order to extract media from an article
  as a script 
  I will parse the media tag and details from the xml file

  Scenario Outline: Count the number of media
    Given I have the document <document>
    When I count the number of media
    Then I count the total as <count>

  Examples:
    | document                    | count
    | elife-kitchen-sink.xml      | 6
    | elife00013.xml              | 0
    | elife00007.xml              | 4
    | elife00240.xml              | 0
    | elife02935.xml              | 6
    | elife_poa_e06828.xml        | 0

  Scenario Outline: Get the media
    Given I have the document <document>
    When I get the media
    And I get the list item <list_item>
    Then I see the string <string>
  
  Examples:
    | document                    | list_item                        | string
    | elife-kitchen-sink.xml      | [0]['type']                      | media
    | elife-kitchen-sink.xml      | [0]['mimetype']                  | application
    | elife-kitchen-sink.xml      | [0]['mime-subtype']              | xlsx
    | elife-kitchen-sink.xml      | [0]['content-type']              | None
    | elife-kitchen-sink.xml      | [0]['position']                  | 1
    | elife-kitchen-sink.xml      | [0]['ordinal']                   | 1
    | elife-kitchen-sink.xml      | [0]['xlink_href']                | elife00013s001.xlsx
    | elife-kitchen-sink.xml      | [0]['component_doi']             | None
    | elife-kitchen-sink.xml      | [0]['parent_component_doi']      | 10.7554/eLife.00013.004
    | elife-kitchen-sink.xml      | [0]['parent_type']               | supplementary-material
    | elife-kitchen-sink.xml      | [0]['parent_ordinal']            | 1
    | elife-kitchen-sink.xml      | [0]['parent_asset']              | data
    | elife-kitchen-sink.xml      | [0]['parent_sibling_ordinal']    | 1
    | elife-kitchen-sink.xml      | [0]['p_parent_type']             | fig
    | elife-kitchen-sink.xml      | [0]['p_parent_ordinal']          | 1
    | elife-kitchen-sink.xml      | [0]['p_parent_sibling_ordinal']  | 1
    | elife-kitchen-sink.xml      | [0]['p_p_parent_ordinal']        | None
    | elife-kitchen-sink.xml      | [0]['p_p_parent_type']           | None
    | elife-kitchen-sink.xml      | [0]['p_p_parent_ordinal']        | None

    | elife-kitchen-sink.xml      | [1]['parent_asset']              | None
    | elife-kitchen-sink.xml      | [1]['parent_sibling_ordinal']    | None
    | elife-kitchen-sink.xml      | [2]['parent_asset']              | data
    | elife-kitchen-sink.xml      | [2]['parent_sibling_ordinal']    | 1
    | elife-kitchen-sink.xml      | [3]['parent_asset']              | supp
    | elife-kitchen-sink.xml      | [3]['parent_sibling_ordinal']    | 1
    | elife-kitchen-sink.xml      | [4]['parent_asset']              | supp
    | elife-kitchen-sink.xml      | [4]['parent_sibling_ordinal']    | 2

    | elife-kitchen-sink.xml      | [5]['type']                      | media
    | elife-kitchen-sink.xml      | [5]['mimetype']                  | application
    | elife-kitchen-sink.xml      | [5]['mime-subtype']              | py
    | elife-kitchen-sink.xml      | [5]['content-type']              | None
    | elife-kitchen-sink.xml      | [5]['position']                  | 6
    | elife-kitchen-sink.xml      | [5]['ordinal']                   | 6
    | elife-kitchen-sink.xml      | [5]['asset']                     | None
    | elife-kitchen-sink.xml      | [5]['xlink_href']                | elife00013s005.py
    | elife-kitchen-sink.xml      | [5]['component_doi']             | None
    | elife-kitchen-sink.xml      | [5]['parent_component_doi']      | 10.7554/eLife.00013.033
    | elife-kitchen-sink.xml      | [5]['parent_type']               | supplementary-material
    | elife-kitchen-sink.xml      | [5]['parent_ordinal']            | 5
    | elife-kitchen-sink.xml      | [5]['parent_asset']              | code
    | elife-kitchen-sink.xml      | [5]['parent_sibling_ordinal']    | 1
    
    | elife02935.xml              | [5]['type']                      | media
    | elife02935.xml              | [5]['mimetype']                  | application
    | elife02935.xml              | [5]['mime-subtype']              | xlsx
    | elife02935.xml              | [5]['content-type']              | None
    | elife02935.xml              | [5]['position']                  | 6
    | elife02935.xml              | [5]['ordinal']                   | 6
    | elife02935.xml              | [5]['xlink_href']                | elife02935s006.xlsx
    | elife02935.xml              | [5]['parent_component_doi']      | 10.7554/eLife.02935.026
    | elife02935.xml              | [5]['parent_type']               | supplementary-material
    | elife02935.xml              | [5]['parent_ordinal']            | 6
    | elife02935.xml              | [5]['parent_asset']              | supp
    | elife02935.xml              | [5]['parent_sibling_ordinal']    | 6
    | elife02935.xml              | [5]['p_parent_type']             | None
    | elife02935.xml              | [5]['p_parent_ordinal']          | None
    
    | elife00007.xml              | [1]['type']                      | media
    | elife00007.xml              | [1]['mimetype']                  | video
    | elife00007.xml              | [1]['mime-subtype']              | avi
    | elife00007.xml              | [1]['content-type']              | glencoe play-in-place height-250 width-310
    | elife00007.xml              | [1]['position']                  | 2
    | elife00007.xml              | [1]['ordinal']                   | 2
    | elife00007.xml              | [1]['sibling_ordinal']           | 2
    | elife00007.xml              | [1]['xlink_href']                | elife00007v002.AVI
    | elife00007.xml              | [1]['component_doi']             | 10.7554/eLife.00007.017
    | elife00007.xml              | [1]['parent_component_doi']      | None
    | elife00007.xml              | [1]['parent_type']               | None
    | elife00007.xml              | [1]['parent_ordinal']            | None
    | elife00007.xml              | [1]['p_parent_type']             | None
    | elife00007.xml              | [1]['p_parent_ordinal']          | None
    
    | elife02304.xml              | [0]['type']                      | media
    | elife02304.xml              | [0]['mimetype']                  | application
    | elife02304.xml              | [0]['mime-subtype']              | pdf
    | elife02304.xml              | [0]['position']                  | 1
    | elife02304.xml              | [0]['ordinal']                   | 1
    | elife02304.xml              | [0]['xlink_href']                | elife02304s001.pdf
    | elife02304.xml              | [0]['component_doi']             | None
    | elife02304.xml              | [0]['parent_component_doi']      | 10.7554/eLife.02304.008
    | elife02304.xml              | [0]['parent_type']               | supplementary-material
    | elife02304.xml              | [0]['parent_ordinal']            | 1
    | elife02304.xml              | [0]['p_parent_type']             | fig
    | elife02304.xml              | [0]['p_parent_asset']            | figsupp
    | elife02304.xml              | [0]['p_parent_ordinal']          | 5
    | elife02304.xml              | [0]['p_parent_sibling_ordinal']  | 3
    | elife02304.xml              | [0]['p_parent_component_doi']    | 10.7554/eLife.02304.007
    | elife02304.xml              | [0]['p_p_parent_type']           | fig
    | elife02304.xml              | [0]['p_p_parent_asset']          | None
    | elife02304.xml              | [0]['p_p_parent_ordinal']        | 3
    | elife02304.xml              | [0]['p_p_parent_sibling_ordinal']| 2
    | elife02304.xml              | [0]['p_p_parent_component_doi']  | 10.7554/eLife.02304.005
    
    | elife04953.xml              | [5]['type']                      | media
    | elife04953.xml              | [5]['mimetype']                  | video
    | elife04953.xml              | [5]['mime-subtype']              | avi
    | elife04953.xml              | [5]['position']                  | 6
    | elife04953.xml              | [5]['ordinal']                   | 6
    | elife04953.xml              | [5]['sibling_ordinal']           | 1
    | elife04953.xml              | [5]['xlink_href']                | elife04953v006.avi
    | elife04953.xml              | [5]['component_doi']             | 10.7554/eLife.04953.040
    | elife04953.xml              | [5]['parent_component_doi']      | 10.7554/eLife.04953.034
    | elife04953.xml              | [5]['parent_type']               | sub-article
    | elife04953.xml              | [5]['parent_ordinal']            | 2
    | elife04953.xml              | [5]['parent_sibling_ordinal']    | 2
    | elife04953.xml              | [5]['p_parent_type']             | None
    | elife04953.xml              | [5]['p_parent_ordinal']          | None
    | elife04953.xml              | [5]['p_parent_sibling_ordinal']  | None
    | elife04953.xml              | [5]['p_parent_component_doi']    | None
    
    | elife00005.xml              | [2]['type']                      | media
    | elife00005.xml              | [2]['mimetype']                  | application
    | elife00005.xml              | [2]['mime-subtype']              | wrl
    | elife00005.xml              | [2]['position']                  | 3
    | elife00005.xml              | [2]['ordinal']                   | 3
    | elife00005.xml              | [2]['sibling_ordinal']           | 1
    | elife00005.xml              | [2]['xlink_href']                | elife00005s001.wrl
    | elife00005.xml              | [2]['component_doi']             | None
    | elife00005.xml              | [2]['parent_component_doi']      | 10.7554/eLife.00005.017
    | elife00005.xml              | [2]['parent_type']               | supplementary-material
    | elife00005.xml              | [2]['parent_asset']              | code
    | elife00005.xml              | [2]['parent_ordinal']            | 1
    | elife00005.xml              | [2]['parent_sibling_ordinal']    | 1
    | elife00005.xml              | [2]['p_parent_type']             | media
    | elife00005.xml              | [2]['p_parent_asset']            | media
    | elife00005.xml              | [2]['p_parent_ordinal']          | 2
    | elife00005.xml              | [2]['p_parent_sibling_ordinal']  | 2
    | elife00005.xml              | [2]['p_parent_component_doi']    | 10.7554/eLife.00005.016
    
    | elife05031.xml              | [0]['type']                      | media
    | elife05031.xml              | [0]['mimetype']                  | application
    | elife05031.xml              | [0]['mime-subtype']              | xlsx
    | elife05031.xml              | [0]['position']                  | 1
    | elife05031.xml              | [0]['ordinal']                   | 1
    | elife05031.xml              | [0]['parent_type']               | supplementary-material
    | elife05031.xml              | [0]['parent_ordinal']            | 1
    | elife05031.xml              | [0]['parent_sibling_ordinal']    | 1
    
    | elife05031.xml              | [1]['type']                      | media
    | elife05031.xml              | [1]['mimetype']                  | application
    | elife05031.xml              | [1]['mime-subtype']              | xlsx
    | elife05031.xml              | [1]['position']                  | 2
    | elife05031.xml              | [1]['ordinal']                   | 2
    | elife05031.xml              | [1]['sibling_ordinal']           | 1
    | elife05031.xml              | [1]['parent_type']               | supplementary-material
    | elife05031.xml              | [1]['parent_ordinal']            | 2
    | elife05031.xml              | [1]['parent_sibling_ordinal']    | 1
    
    | elife05031.xml              | [2]['type']                      | media
    | elife05031.xml              | [2]['mimetype']                  | application
    | elife05031.xml              | [2]['mime-subtype']              | xlsx
    | elife05031.xml              | [2]['position']                  | 3
    | elife05031.xml              | [2]['ordinal']                   | 3
    | elife05031.xml              | [2]['sibling_ordinal']           | 1
    | elife05031.xml              | [2]['parent_type']               | supplementary-material
    | elife05031.xml              | [2]['parent_ordinal']            | 3
    | elife05031.xml              | [2]['parent_sibling_ordinal']    | 1
    
    | elife04493.xml              | [2]['type']                      | media
    | elife04493.xml              | [2]['mimetype']                  | video
    | elife04493.xml              | [2]['mime-subtype']              | mov
    | elife04493.xml              | [2]['xlink_href']                | elife04493v003.mov
    | elife04493.xml              | [2]['position']                  | 3
    | elife04493.xml              | [2]['ordinal']                   | 3
    | elife04493.xml              | [2]['sibling_ordinal']           | 3
    | elife04493.xml              | [2]['parent_type']               | None
    | elife04493.xml              | [2]['parent_ordinal']            | None
    | elife04493.xml              | [2]['parent_sibling_ordinal']    | None
    
    | elife04493.xml              | [8]['type']                      | media
    | elife04493.xml              | [8]['mimetype']                  | video
    | elife04493.xml              | [8]['mime-subtype']              | mov
    | elife04493.xml              | [8]['xlink_href']                | elife04493v009.mov
    | elife04493.xml              | [8]['position']                  | 9
    | elife04493.xml              | [8]['ordinal']                   | 9
    | elife04493.xml              | [8]['sibling_ordinal']           | 9
    | elife04493.xml              | [8]['parent_type']               | None
    | elife04493.xml              | [8]['parent_ordinal']            | None
    | elife04493.xml              | [8]['parent_sibling_ordinal']    | None
    
    | elife04493.xml              | [22]['type']                      | media
    | elife04493.xml              | [22]['mimetype']                  | application
    | elife04493.xml              | [22]['mime-subtype']              | docx
    | elife04493.xml              | [22]['xlink_href']                | elife04493s001.docx
    | elife04493.xml              | [22]['position']                  | 23
    | elife04493.xml              | [22]['ordinal']                   | 23
    | elife04493.xml              | [22]['sibling_ordinal']           | 1
    | elife04493.xml              | [22]['parent_type']               | supplementary-material
    | elife04493.xml              | [22]['parent_ordinal']            | 1
    | elife04493.xml              | [22]['parent_sibling_ordinal']    | 1
    