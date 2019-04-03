<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="gb2312"/>
	<xsl:template match="/">
		<html>
			<style>

			body{
            display:block;
            background-image:url(../images/back.jpg);
            background-repeat: repeat;
            }

            poster{
            displsy:block;
            float:left;
            margin-left:10%;
			margin-top:3%;
			}

           
			div{
			line-height:18px;
			}

			position
			{

			display:inline;
			}

			name
			{
			display:block;
			}

			</style>

			<body>
			
								
				
				

				<poster>
                    <img width="240" height="400">
                        <xsl:attribute name="src">
                            <xsl:value-of select="movies/movie/other/movie_image"/>
                        </xsl:attribute>
                    </img>
				</poster>
				
				<name >
					<div style="font-size:30px" align="center">
						<font color="red" face="华文仿宋">
					    <xsl:value-of select="movies/movie/content/name"/>
						</font>
					</div>
				</name>
				
				<br/>


				
				<div>
				<position>总导演：</position>
				<xsl:value-of select="movies/movie/personnel/director/chief_director"/>
				</div>
				<br/>

				<postion>主演:</postion>
				    <xsl:for-each  select="movies/movie/personnel/performer/perlead">
                                            
                        <xsl:value-of select="."/>

                	</xsl:for-each>
                <br/>
                <div>
                	<postion>演员表:</postion>
                	<xsl:for-each  select="movies/movie/personnel/performer/per_supporting_role">
                                            
                        <xsl:value-of select="."/>

                	</xsl:for-each>

                </div>
                <br/>
				<div>
                <synopsis>
					<div style="font-size:18px">影片简介:</div>
				    <font face="华文仿宋">
				    	<xsl:value-of select="movies/movie/content/synopsis"/>
				    </font>    
					    
					
				</synopsis>
				</div>
				<br/>
				
				<div>上映日期:
				<xsl:value-of select="movies/movie/other/release_time"/>
				</div>
				<br/>
				<div>评分:
				<xsl:value-of select="movies/movie/other/score"/>
				</div>
				<br/>
				



                <div>播放链接：
                	<a href="{movies/movie/other/movie_link}" color="black" >腾讯视频</a>
                </div>



				


				
			
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

