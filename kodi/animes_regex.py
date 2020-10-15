#!/usr/bin/env python3

import sys
import re
import xml.etree.ElementTree as ET

def test_patterns(patterns, files):
    compiled_patterns = [re.compile(p) for p in patterns]
    for f in files:
        matched = False
        for p in compiled_patterns:
            if p.match(f):
                matched = True
        if not matched:
            print(f)

def extract_regexp():
    tree = ET.parse('advancedsettings.xml')
    root = tree.getroot()

    reg = {}

    for matching in root.iter('tvshowmatching'):
        #print(matching.attrib)
        if 'action' not in matching.attrib:
            continue
        action = matching.attrib.get('action')
        reg[action] = []
        for regexp in matching.iter('regexp'):
            #print(regexp.text)
            reg[action].append(regexp.text)

    return reg

def read_episodes():
    with open('animes_files.txt') as f:
            lines = [line.rstrip() for line in f]
    return lines

if __name__ == "__main__":
    episodes = read_episodes()
    matchings = extract_regexp()
    #print(matchings)
    for action, regexps in matchings.items():
        test_patterns(regexps, episodes)

