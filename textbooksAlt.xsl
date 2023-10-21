<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
            <link rel="stylesheet" href="xmlStylesAlt.css"/>
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
                <!-- Header/Menu -->
                <ul class="navbar-main">
                    <li class="menu-list"><a class="menu-item" href="index.html"> Home</a></li>
                    <li class="menu-list"><a class="menu-item" href="about.html"> About</a></li>
                    <li class="menu-list"><a class="menu-item" href="contact.html">Contact</a></li>
                    <li class="menu-list"><a class="menu-item" href="instructions.html">Instructions</a></li>
                    <li class="menu-list"><a class="menu-item" href="computerBuilder.html">Build Your PC</a></li>
                    <li class="menu-list"><a class="menu-item" href="Animate.html">Adobe Animate</a></li>
                    <li class="menu-list"><a class="menu-item" href="textbooks.xml">TextBooks</a></li>
                    <li class="menu-list-last-element"><a class="menu-item" href="indexAlt.html">Alternate View (Style Sheet Change)</a></li>
                </ul>
                <!-- End of Header/Menu -->

                <!-- Table to display textbooks -->
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
                                <td><xsl:value-of select="author/firstName"/> 
                                 <xsl:text> </xsl:text>
                                <xsl:value-of select="author/lastName"/></td>
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
