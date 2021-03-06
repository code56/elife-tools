import os, unittest
from bs4 import BeautifulStoneSoup as bss

import parseJATS as parser
import rawJATS as raw_parser

class JatsParser(unittest.TestCase):
    def setUp(self):
        self.kitchen_sink_xml = os.path.join(os.getcwd(), 'sample-xml/elife-kitchen-sink.xml')
        self.xml = os.path.join(os.getcwd(), 'sample-xml/elife00013.xml')
        self.soup = parser.parse_document(self.kitchen_sink_xml)

    def tearDown(self):
        self.soup = None

    def test_quickly(self):
        struct = [
            (parser.doi, u"10.7554/eLife.00013"),
            (parser.journal_id, u"eLife"),
            (parser.journal_title, u"eLife"),
            #(parser.journal_issn, u"2050-084X"),
            (parser.publisher, u"eLife Sciences Publications, Ltd"),
        ]
        for func, expected in struct:
            soup = parser.parse_document(self.kitchen_sink_xml)
            got = func(soup)
            try:

                self.assertEqual(got, expected)
            except AssertionError:
                print 'failed on',func,'expected',expected,'got',got
                raise
        soup = parser.parse_document(self.kitchen_sink_xml)        
        self.assertEqual(parser.journal_issn(soup, pub_format="electronic"), u"2050-084X")

    def test_quickly2(self):
        soup = parser.parse_document(self.xml)
        self.assertEqual(raw_parser.article_type(soup), "research-article")

if __name__ == '__main__':
    unittest.main()
