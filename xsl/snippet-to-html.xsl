<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <xsl:for-each select="templateSet/template">
    <xsl:sort select="@name"/>
    <p/>
    <h2><xsl:value-of select="@name"/></h2>
    <xsl:value-of select="@description"/>
    <pre>
      <xsl:value-of select="@value"/>
    </pre>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>