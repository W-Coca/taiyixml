<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="gb2312"/>
	<xsl:template match="/">
		<html>
			<body>
				<h2 align="center">太一影视</h2>
				<tr bgcolor="#9acd32">
    </tr>
				<xsl:for-each select="movies/movie">
					<tr style="text-align:center">
						<br/>
						<td style="center">
							<xsl:value-of select="content/name"/>
						</td>
						<td style="center">
						   <img src="{other/movie_image}"/>
						</td>
						<br/>
						<td align="center">
							<xsl:value-of select="content/synopsis"/>
						</td>
						<br/>
						<td align="center">
							<xsl:value-of select="personnel/performer/perlead"/> 饰 </td>
						<td align="center">
							<xsl:value-of select="content/role/lead"/>
						</td>
						<td>
							<xsl:for-each select="personnel/performer/per_supporting_role">
								<xsl:value-of select="."/>
								<xsl:for-each select="/content/role/supporting_role">
									<xsl:value-of select="."/>
								</xsl:for-each>
							</xsl:for-each>
						</td>
						<br/>
					</tr>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
