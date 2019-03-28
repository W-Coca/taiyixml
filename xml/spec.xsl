<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="gb2312"/>
	<xsl:template match="/">
		<html>
			<style> 
			back{
            display: block;
            background-image:url(../images/lan.jpg);
            background-repeat: repeat;
           
            }
			
			
			image1{
			display:block;
			margin-left:10%;
			margin-top:5%;
			float:left;
			}
			
			synopsis{
		    display:block;
			margin-left:45%;
			margin-right:10%;
			margin-top:2%;
			}
			
			actor{
			display:inline-block;
			margin-left:3%;
			margin-top:2%;
			font-size:20px;
			}
			
			div{
			display:inline;
			}
			
			footer{
            height:40px;
            line-height:40px;
            border-top:1px solid #ddd;
            text-align:center;
			background-color:#BCEE68;
			}
            </style> 
		    <body>
			<back>

			    <font color="orange">
				    <div style="font-size:50px" align="center">
					    <xsl:value-of select="movies/movie/content/name"/>
				    </div>
				</font>
				
				<image1>
                    <img width="470" height="705">
                        <xsl:attribute name="src">
                            <xsl:value-of select="movies/movie/other/movie_image"/>
                        </xsl:attribute>
                    </img>
				</image1>
				<synopsis><div style="font-size:20px">影片简介:</div>
				    <font color="black">
				        <div style="font-size:20px">
					        <xsl:value-of select="movies/movie/content/synopsis"/>
				        </div>
				    </font>
				</synopsis>
				<br/>
				<actor>
			 
   			    <table width="600" height="200">
                    <tr bgcolor="#9acd32" >
                        <th align="center">演员</th>
	                    <th align="left"></th>
	                    <th align="center">角色</th>
	                    <th align="center">演员</th>
	                    <th align="left"></th>
	                    <th align="center">角色</th> 
                    </tr>
                    <xsl:for-each select="movies/movie">
                            <td >
	                            <div align="center">
	                                <font size="4" color="#9A32CD">
                                        <xsl:for-each  select="personnel/performer/perlead">
                                            <xsl:value-of select="."/><br/>
                                        </xsl:for-each>
	                                </font>
	                            </div>
                            </td>
                            
							<td><font size="4" color="red">饰 </font></td>
                           
 						    <td >
	                            <div align="center">
	                                <font size="4" color="#9A32CD">
                                        <xsl:for-each select="content/role/lead">
                                            <xsl:value-of select="."/><br/>
                                        </xsl:for-each>
	  	                            </font>
		                        </div>
                            </td>
					        
							<td >
	                            <div align="center">
	                                <font size="4" color="#9A32CD">
                                        <xsl:for-each select="personnel/performer/per_supporting_role">
                                            <xsl:value-of select="."/><br/>
                                        </xsl:for-each>
	  	                            </font>
		                        </div>
                            </td>


                            <td><font size="4" color="red">饰 </font></td>

							
							<td >
	                            <div align="center">
	                                <font size="4" color="#9A32CD">
                                        <xsl:for-each select="content/role/supporting_role">
                                            <xsl:value-of select="."/><br/>
                                        </xsl:for-each>
	  	                            </font>
		                        </div>
                            </td>

                    </xsl:for-each>
                </table>
	            
				</actor>
				
				<actor>
				    <font size="5px">
				        <font color="red">
					        <div>总导演：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/director/chief_director"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>选角导演：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/director/other_director/corner_director"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>配音导演：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/director/other_director/dubbing_director"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>副导演：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/director/other_director/deputy_director"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>艺术设计：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/design/art_design"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>造型设计：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/design/styling_design"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>服装设计：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/design/clothing_design"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>录音：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/other_person/sound_recording"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>摄像：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/other_person/photography"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>编剧：</div>
				        </font>
						<xsl:value-of select="movies/movie/personnel/other_person/screenwriter"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>主题曲：</div>
				        </font>
						<xsl:value-of select="movies/movie/music/theme_song"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>宣传曲：</div>
				        </font>
						<xsl:value-of select="movies/movie/music/propaganda_song"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>评分：</div>
				        </font>
						<xsl:value-of select="movies/movie/other/score"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>上映时间：</div>
				        </font>
						<xsl:value-of select="movies/movie/other/release_time"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>票房：</div>
				        </font>
						<xsl:value-of select="movies/movie/other/box_office"/>
				    </font>
				</actor>
								<actor>
				    <font size="5px">
				        <font color="red">
					        <div>播放链接：</div>
				        </font>
						<a href="{movies/movie/other/movie_link}">腾讯视频</a>
				    </font>
				</actor>
				
				<footer>copyright 太一</footer>
				
				</back>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
