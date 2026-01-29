<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  
  <xsl:template match="/">
    <div class="mapstore-feature-info">
      <style>
        .mapstore-feature-info {
          font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
          padding: 10px;
        }
        .feature-info-table {
          width: 100%;
          border-collapse: collapse;
        }
        .feature-info-table th {
          background-color: #f0f0f0;
          padding: 8px;
          text-align: left;
          font-weight: 600;
        }
        .feature-info-table td {
          padding: 8px;
          border-bottom: 1px solid #e0e0e0;
        }
      </style>
      
      <xsl:for-each select="//FIELDS">
        <table class="feature-info-table">
          <xsl:for-each select="@*">
            <tr>
              <th><xsl:value-of select="name()"/></th>
              <td><xsl:value-of select="."/></td>
            </tr>
          </xsl:for-each>
        </table>
      </xsl:for-each>
    </div>
  </xsl:template>
</xsl:stylesheet>
