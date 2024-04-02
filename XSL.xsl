<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
  <html>
    <head>
      <title><xsl:value-of select="channel/title"/></title>
    </head>
    <body>
      <h1><xsl:value-of select="channel/title"/></h1>
      <ul>
        <xsl:apply-templates select="channel/item"/>
      </ul>
    </body>
  </html>
</xsl:template>

<xsl:template match="item">
  <li>
    <h2><a href="{link}"><xsl:value-of select="title"/></a></h2>
    <p><xsl:value-of select="description"/></p>
  </li>
</xsl:template>
</xsl:stylesheet>
