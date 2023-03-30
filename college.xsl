<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>College Info</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Name of College</th>
                        <th>Place of college</th>
                    </tr>
                    <xsl:for-each select="root/row">
                        <tr>
                            <td>
                                <xsl:value-of select="CollegeName"/>
                            </td>
                            <td>
                                <xsl:value-of select="StateName"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet> 