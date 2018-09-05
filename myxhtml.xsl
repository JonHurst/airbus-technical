<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/chunk.xsl"/>
<xsl:param name="html.stylesheet" select="'style.css'"/>
<xsl:param name="chunk.section.depth" select="1"/>
<xsl:param name="chunk.first.sections" select="1"/>
<xsl:param name="base.dir" select="'html/'"/>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<xsl:param name="section.autolabel.max.depth" select="2"/>
<xsl:param name="generate.section.toc.level" select="1"/>
<xsl:param name="toc.max.depth" select="1"/>

<xsl:param name="make.clean.html" select="1"/>
<xsl:template name="user.head.content">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
</xsl:template>

<xsl:template name="user.header.navigation">
  <div class="user_header">
    <a href="https://hursts.org.uk">All Documents</a> |
    <a href="../notes.pdf">PDF version</a>
    <hr/>
  </div>
</xsl:template>

</xsl:stylesheet>
