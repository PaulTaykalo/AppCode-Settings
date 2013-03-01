<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:for-each select="templateSet/template">
<xsl:sort select="@name"/>
## <xsl:value-of select="@name"/>  
`<xsl:value-of select="@description"/> `  
```
<xsl:value-of select="@value"/>
```
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>