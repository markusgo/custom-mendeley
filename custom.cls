<?xml version="1.0" encoding="utf-8"?>
<style xmlns="http://purl.org/net/xbiblio/csl" class="in-text" version="1.0" demote-non-dropping-particle="sort-only" page-range-format="expanded" default-locale="en-US">
  <info>
    <title>Compact Numeric (Square Brackets)</title>
    <id>http://www.zotero.org/styles/compact-numeric-square-brackets</id>
    <link href="http://www.zotero.org/styles/compact-numeric-square-brackets" rel="self"/>
    <author>
      <name>Custom style</name>
    </author>
    <category citation-format="numeric"/>
    <category field="medicine"/>
    <summary>Numeric style with square-bracket citations and a compact bibliography: first author (et al.), abbreviated journal, volume(issue), pages.</summary>
    <updated>2026-10-11T00:00:00+00:00</updated>
  </info>
  <locale xml:lang="en">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <macro name="author">
    <names variable="author">
      <name name-as-sort-order="all" sort-separator=" " initialize-with="" delimiter=", " delimiter-precedes-et-al="always" et-al-min="2" et-al-use-first="1"/>
      <substitute>
        <names variable="editor"/>
        <text variable="publisher"/>
      </substitute>
    </names>
  </macro>
  <macro name="journal-details">
    <group delimiter=", ">
      <text variable="container-title" form="short"/>
      <group>
        <text variable="volume"/>
        <text variable="issue" prefix="(" suffix=")"/>
      </group>
      <text variable="page"/>
    </group>
  </macro>
  <macro name="other-details">
    <group delimiter=", ">
      <text variable="title"/>
      <text variable="publisher"/>
      <date variable="issued">
        <date-part name="year"/>
      </date>
    </group>
  </macro>
  <citation collapse="citation-number">
    <sort>
      <key variable="citation-number"/>
    </sort>
    <layout prefix="[" suffix="]" delimiter=",">
      <text variable="citation-number"/>
    </layout>
  </citation>
  <bibliography entry-spacing="0" second-field-align="flush">
    <layout suffix=".">
      <text variable="citation-number" prefix="[" suffix="]"/>
      <group delimiter=", ">
        <text macro="author"/>
        <choose>
          <if variable="container-title">
            <text macro="journal-details"/>
          </if>
          <else>
            <text macro="other-details"/>
          </else>
        </choose>
      </group>
    </layout>
  </bibliography>
</style>
