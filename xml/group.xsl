<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="gb2312"/>
	<xsl:template match="/">
		<html>
			<style> 
			
			back{
            display: block;
            background-image:url(../images/groupback.jpg);
			background-size:60% 100%;
			background-repeat:no-repeat;
            }
			
			image1{
			display:block;
			margin-left:4%;
			margin-top:0%;
			}
			
			name{
			display:inline-block;
			margin-left:7%;
			margin-top:13%;
			}
			info{
			display:inline-block;
			margin-left:7%;
			}
			
			name2{
			display:inline-block;
			margin-left:7%;
			margin-top:7%;
			}
			
			image2{
			display:block;
			margin-left:4%;
			margin-top:13%;
			float:left;
			}
			
			image4{
			display:block;
			margin-left:0%;
		    margin-top:7%;
			padding-bottom:5%;
			float:left;
			}
			
			image3{
			display:block;
			margin-left:4%;
			padding-top:1%;
			padding-bottom:1%;
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
			
				<image1>
                    <img width="220" height="200">
                        <xsl:attribute name="src">
                            <xsl:value-of select="group/logo"/>
                        </xsl:attribute>
                    </img>
				</image1>
				
				<image2>
                    <img width="153" height="200">
                        <xsl:attribute name="src">
                            <xsl:value-of select="group/member/remarks/image1"/>
                        </xsl:attribute>
                    </img>
				</image2>
				

				<br/>
				<name>
				    <font size="5px" color="blue">
						<xsl:value-of select="group/member/basic_information/mem1_name"/>
				    </font>
				</name>
				
				<name>
				    <font size="5px" color="blue">
						<xsl:value-of select="group/member/basic_information/age"/>岁
				    </font>
				</name>
				
				<name>
				    <font size="5px" color="blue">
						<xsl:value-of select="group/member/basic_information/sex"/>
				    </font>
				</name>
				
				<name>
				    <font size="5px" color="blue">
						<xsl:value-of select="group/member/basic_information/nationnlity"/>
				    </font>
				</name>
				<br/>
				<br/>
				<info>
				    <font size="5px" color="blue">学号：
						<xsl:value-of select="group/member/identity/iden_id"/>
				    </font>
				</info>
				<br/>
				<br/>
				<info>
				    <font size="5px" color="blue">专业：
						<xsl:value-of select="group/member/identity/speciality"/>
				    </font>
				</info>
				<br/>
				<br/>
				<info>
				    <font size="5px" color="blue">
						<xsl:value-of select="group/member/remarks/hobby"/>
				    </font>
				</info>
					<br/>

				<image4>
                    <img width="150" height="200">
                        <xsl:attribute name="src">
                            <xsl:value-of select="group/member/contact_information/image2"/>
                        </xsl:attribute>
                    </img>
				</image4>
				<br/>
				<name2>
				    <font size="5px" color="blue">
						<xsl:value-of select="group/member/personal_information/mem2_name"/>
				    </font>
				</name2>
				
				<name2>
				    <font size="5px" color="blue">22
						<xsl:value-of select="group/member/personal_information/mem2name"/>
				    </font>
				</name2>
				
				<name2>
				    <font size="5px" color="blue">男
						<xsl:value-of select="group/member/personal_information/mem2name"/>
				    </font>
				</name2>
				
			    <br/>
				<br/>
				<info>
				    <font size="5px" color="blue">学号：
						<xsl:value-of select="group/member/personal_information/id"/>
				    </font>
				</info>
				<br/>
				<br/>
				<info>
				    <font size="5px" color="blue">专业：
						<xsl:value-of select="group/member/personal_information/major"/>
				    </font>
				</info>
				<br/>
				<br/>
				<info>
				    <font size="5px" color="blue">邮箱：
						<xsl:value-of select="group/member/contact_information/mail"/>
				    </font>
				</info>
				
				<image3>
                    <img width="150" height="200">
                        <xsl:attribute name="src">
                            <xsl:value-of select="group/member/contact_information/image3"/>
                        </xsl:attribute>
                    </img>
				</image3>
				</back>
				
				<footer>copyright 太一</footer>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
