<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	<head>
		<meta charset="utf-8"></meta>
		<link rel="stylesheet" type="text/css" href="../style/courses_grid.css"></link>
		<link rel="stylesheet" type="text/css" href="../style/course.css"></link>
	</head>
	<body>
		<div class="content" id="0">
			<xsl:for-each select="academia/curso">
		<!--xsl:sort select="categoria"/-->
			<a>
				<xsl:attribute name="href">
						#<xsl:value-of select="@id" />
				</xsl:attribute>
			<div>
				<h3><xsl:value-of select="titulo"/></h3>
				<img>
					<xsl:attribute name="src">
						../images/<xsl:value-of select="imagen" />
					</xsl:attribute>
				</img>
				<p> <xsl:value-of select="categoria"/> </p>
				<div>
					<xsl:value-of select="precio"/>
				</div>
			</div>
		</a>
		</xsl:for-each>
		</div>
		<xsl:for-each select="academia/curso">
			<div class="curso">
				<xsl:attribute name="id">
					<xsl:value-of select="@id" />
				</xsl:attribute>
				<img>
					<xsl:attribute name="src">
						../images/<xsl:value-of select="imagen" />
					</xsl:attribute>
				</img>
				<div>
					<h2>Curso de <xsl:value-of select="titulo"/></h2>
					<xsl:for-each select="descripcion/p">
						<p><xsl:value-of select="."/></p>
					</xsl:for-each>
				</div>
			</div>
		</xsl:for-each>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>