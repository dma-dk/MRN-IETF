<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>
  <xsl:template match="/">
    <xsl:text>FILENAME HEADER INFO</xsl:text>
      <xsl:for-each select="collection('.?select=*.xml')">
        <xsl:text>&#10;</xsl:text>        
        <xsl:value-of select="document-uri(.)"/>
        <xsl:text> </xsl:text>        
        <xsl:value-of select="/registrant"/>
      </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>