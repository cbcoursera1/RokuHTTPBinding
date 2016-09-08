<?xml version="1.0"?>
<xsl:stylesheet 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:yweather="http://rokuIP:8060/query/active-app" version="1.0">

   <xsl:output indent="yes" method="xml" encoding="UTF-8" omit-xml-declaration="yes" />

   <xsl:template match="/">
      <xsl:value-of select="//app" /> 
   </xsl:template>

</xsl:stylesheet>