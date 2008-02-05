<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="/usr/share/sgml/docbook/xsl-stylesheets-1.70.1/fo/docbook.xsl"/>
<xsl:param name="draft.mode" select="'no'"/>
<xsl:param name="paper.type" select="'A4'"/>

<!--<xsl:param name="double.sided" select="1"/>-->
<xsl:param name="hyphenate">true</xsl:param>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<xsl:param name="section.autolabel.max.depth" select="2"/>
<xsl:param name="insert.xref.page.number" select="'yes'"/>
<xsl:param name="toc.indent.width" select="'30'"/>
<xsl:param name="default.table.width" select="'5.5in'"/>
<xsl:param name="default.image.width">5.5in</xsl:param>
<xsl:param name="body.start.indent">0.768in</xsl:param>

<!--<xsl:attribute-set name="section.level1.properties">
  <xsl:attribute name="break-before">page</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level1.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.4"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level2.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.2"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level3.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>-->

</xsl:stylesheet>
