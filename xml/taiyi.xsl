<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output encoding="gb2312"/>
<xsl:template match="/">
  <html>
  <body>
    <h2 align="center">太一影视</h2>
    <table border="1">
    <tr bgcolor="#9acd32">
     <th align="left">image</th>
      <th align="left">name</th>
      <th align="left">synopsis</th>
      <th align="left">perlead</th>
      <th align="left"></th>
	  <th align="left">lead</th>
	  <th align="left">per_supporting_role</th>
	  <th align="left"></th>
	  <th align="left">supporting_role</th>
	  <th align="left">art_design</th>
	  <th align="left">styling_design</th>
	  <th align="left">clothing_design</th>
	  <th align="left">chief_director</th>
	  <th align="left">corner_director</th>
	  <th align="left">dubbing_director</th>
	  <th align="left">deputy_director</th>

	  <th align="left">sound_recording</th>
	  <th align="left">photography</th>
	  <th align="left">screenwriter</th>
	  <th align="left">theme_song</th>
	  <th align="left">propaganda_song</th>
	  <th align="left">score</th>
	  <th align="left">release_time</th>
	  <th align="left">box_office</th>
	  <th align="left">movie_link</th>
	  <th align="left">movie_image</th>
	  
    </tr>
    <xsl:for-each select="movies/movie">
    <tr>
    <td>
<<<<<<< HEAD
    <img height="600" width="400">
=======
    <img height="200" width="100">
>>>>>>> f0d88154d297618ba3e055930cf8b96665afaf1b
          <xsl:attribute name="src">
              <xsl:value-of select="other/movie_image"/>
          </xsl:attribute>
    </img>
    
    </td>
      <td><xsl:value-of select="content/name"/></td>
      <td><xsl:value-of select="content/synopsis"/></td>
      <td  width="300" height="600">
      <xsl:for-each  select="personnel/performer/perlead">
<xsl:value-of select="."/><br/>
      </xsl:for-each>
</td>
<td>饰</td>
      <td  width="300">
      <xsl:for-each select="content/role/lead">
      <xsl:value-of select="."/><br/>
      </xsl:for-each>
      </td>

<td  width="200">
      <xsl:for-each select="personnel/performer/per_supporting_role">
<xsl:value-of select="."/><br/>
      </xsl:for-each>
</td>

<td>饰</td>

 <td  width="400">     
      <xsl:for-each select="content/role/supporting_role">
      <xsl:value-of select="."/><br/>
      </xsl:for-each>
</td>

      <td><xsl:value-of select="personnel/design/art_design"/></td>
      <td><xsl:value-of select="personnel/design/styling_design"/></td>
      <td><xsl:value-of select="personnel/design/clothing_design"/></td>
      <td><xsl:value-of select="personnel/director/chief_director"/></td>
      <td><xsl:value-of select="personnel/director/other_director/corner_director"/></td>
      <td><xsl:value-of select="personnel/director/other_director/dubbing_director"/></td>
      <td><xsl:value-of select="personnel/director/other_director/deputy_director"/></td>


      <td><xsl:value-of select="personnel/other_person/sound_recording"/></td>
      <td><xsl:value-of select="personnel/other_person/photography"/></td>
      <td><xsl:value-of select="personnel/other_person/screenwriter"/></td>
      <td><xsl:value-of select="music/theme_song"/></td>
      <td><xsl:value-of select="music/propaganda_song"/></td>	  
      <td><xsl:value-of select="other/score"/></td>
	  <td><xsl:value-of select="other/release_time"/></td>
	  <td><xsl:value-of select="other/box_office"/></td>
	  <td><xsl:value-of select="other/movie_link"/></td>
	  <td><xsl:value-of select="other/movie_image"/></td>
    </tr>
    </xsl:for-each>
    </table>
  </body>
  </html>
	</xsl:template>
</xsl:stylesheet>









