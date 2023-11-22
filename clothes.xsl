<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Identity template: copies everything as is by default -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>

    <!-- Matches the root element to start the transformation -->
    <xsl:template match="products">
        <html>
            <head>
                <title>NCI Merchandise</title>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="bootstrap.min.css" />
                <!-- Custom CSS -->
                <link href="style.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <div id="wrap">
                    <nav class="navbar navbar-expand-md navbar-light bg-light">
                        <a class="navbar-brand" href="index.html">
                            <h1 id="textlogo">NCI <span>Merchandise</span>
                            </h1>
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarNav">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item ">
                                    <a class="nav-link" href="index.html">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.html">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="product.html">Products</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <h2>Product List</h2>
                    <table border="1">
                        <tr>
                            <th>Code</th>
                            <th>Category</th>
                            <th>Description</th>
                            <th>Quantity</th>
                            <th>Price</th>
                        </tr>
                        <xsl:apply-templates />
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- Matches each product element to create a table row -->
    <xsl:template match="product">
        <tr>
            <td>
                <xsl:value-of select="@code" />
            </td>
            <td>
                <xsl:value-of select="category" />
            </td>
            <td>
                <xsl:value-of select="description" />
            </td>
            <td>
                <xsl:value-of select="quantity" />
            </td>
            <td>
                <xsl:value-of select="price" />
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>