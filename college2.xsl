<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">

    <xsl:for-each select="root/row">
      <div style="background-color:teal;color:white;padding:4px">
        <span style="font-weight:bold">
          <xsl:value-of select="CollegeName"/>
 - </span>
        <xsl:value-of select="CollegeType"/>
      </div>
      <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
        <p>
          <xsl:value-of select="UniversityName"/>
          <span style="font-style:italic"> 
            (<xsl:value-of select="DistrictName"/> <xsl:value-of select="StateName"/>)
          </span>
        </p>
      </div>
    </xsl:for-each>
  </body>
</html> 