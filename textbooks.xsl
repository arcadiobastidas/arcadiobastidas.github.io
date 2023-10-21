<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    table, th, td {
                        border: 1px solid black;
                        padding: 10px;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <table>
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Year of Publication</th>
                            <th>ISBN</th>
                            <th>Book Website</th>
                            <th>Edition</th>
                            <th>Cover Type</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="textbooks/textbook">
                            <tr>
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="author/firstName"/> <xsl:value-of select="author/lastName"/></td>
                                <td><xsl:value-of select="publisher/name"/></td>
                                <td><xsl:value-of select="publicationYear"/></td>
                                <td><xsl:value-of select="ISBN"/></td>
                                <td><a href="{bookWebsite}"><xsl:value-of select="bookWebsite"/></a></td>
                                <td><xsl:value-of select="edition"/></td>
                                <td><xsl:value-of select="coverType"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
