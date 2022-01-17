<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>
<xsl:param name="fop.extensions" select="0"></xsl:param>
<xsl:param name="fop1.extensions" select="1"></xsl:param>
<xsl:param name="draft.mode" select="'no'"/>
<xsl:param name="paper.type" select="'A5'"/>


<xsl:param name="page.margin.inner">18mm</xsl:param>
<xsl:param name="page.margin.outer">12mm</xsl:param>
<xsl:param name="body.start.indent">3mm</xsl:param>
<xsl:param name="double.sided">1</xsl:param>


<xsl:param name="body.font.master" select="10"/>
<xsl:param name="hyphenate">true</xsl:param>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<xsl:param name="section.autolabel.max.depth" select="2"/>
<!-- <xsl:param name="insert.xref.page.number" select="'yes'"/> -->
<xsl:param name="toc.indent.width" select="'30'"/>
<xsl:param name="toc.section.depth" select="'1'"/>

<!-- <xsl:param name="default.table.width" select="'105mm'"/> -->
<xsl:param name="default.image.width">105mm</xsl:param>
<xsl:param name="body.font.family">FreeSerif</xsl:param>
<xsl:param name="title.font.family">FreeSans</xsl:param>

<xsl:param name="header.column.widths">1 10 1</xsl:param>

<!-- <xsl:param name="symbol.font.family" select="'Symbol,ZapfDingbats,unifont'"/> -->
<xsl:param name="symbol.font.family" select="'FreeSerif'"/>
<!-- <xsl:template match="symbol[@role = 'symbolfont']"> -->
<!--   <fo:inline font-family="Symbol" font-size="0.85em"> -->
<!--     <xsl:call-template name="inline.charseq"/> -->
<!--   </fo:inline> -->
<!-- </xsl:template> -->


<xsl:param name="orderedlist.label.width">2em</xsl:param>

<xsl:attribute-set name="formal.title.properties"
                   use-attribute-sets="normal.para.spacing">
  <xsl:attribute name="font-weight">bold</xsl:attribute>
  <xsl:attribute name="font-size">10pt</xsl:attribute>
  <xsl:attribute name="hyphenate">false</xsl:attribute>
  <xsl:attribute name="space-after.minimum">0.4em</xsl:attribute>
  <xsl:attribute name="space-after.optimum">0.6em</xsl:attribute>
  <xsl:attribute name="space-after.maximum">0.8em</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="table.cell.padding">
  <xsl:attribute name="padding-left">3pt</xsl:attribute>
  <xsl:attribute name="padding-right">3pt</xsl:attribute>
  <xsl:attribute name="padding-top">2pt</xsl:attribute>
  <xsl:attribute name="padding-bottom">2pt</xsl:attribute>
</xsl:attribute-set>


<xsl:attribute-set name="component.title.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.4"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>


<xsl:attribute-set name="admonition.title.properties">
  <xsl:attribute name="font-size">12pt</xsl:attribute>
</xsl:attribute-set>

<!-- <xsl:attribute-set name="section.title.properties"> -->
<!--   <xsl:attribute name="font-family">Times New Roman</xsl:attribute> -->
<!-- </xsl:attribute-set> -->


<!-- <xsl:attribute-set name="section.level1.properties"> -->
<!--   <xsl:attribute name="break-before">page</xsl:attribute> -->
<!-- </xsl:attribute-set> -->

<xsl:attribute-set name="section.title.level1.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.3"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level2.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.23"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level3.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master*1.1"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level4.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:param name="local.l10n.xml" select="document('')"/>
<l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
  <l:l10n language="en">
    <l:context name="xref">
      <l:template name="page.citation" text="  [%p] "/>
    </l:context>
  </l:l10n>
</l:i18n>

<xsl:template match="para[@role='multicite']">
  <xsl:variable name="keep.together">
    <xsl:call-template name="pi.dbfo_keep-together"/>
  </xsl:variable>
  <fo:block font-size="0.9em" color="#404040" text-align="left" keep-with-previous="always" xsl:use-attribute-sets="normal.para.spacing">
    <xsl:if test="$keep.together != ''">
      <xsl:attribute name="keep-together.within-column"><xsl:value-of
                      select="$keep.together"/></xsl:attribute>
    </xsl:if>
    <xsl:call-template name="anchor"/>
    <xsl:apply-templates/>
  </fo:block>
</xsl:template>

<xsl:template name="header.content">
  <xsl:param name="position" select="''"/>
  <xsl:choose>
    <xsl:when test="$position = 'center'">
      <xsl:apply-templates select="."  mode="object.title.markup"/>
    </xsl:when>
  </xsl:choose>
</xsl:template>
</xsl:stylesheet>
