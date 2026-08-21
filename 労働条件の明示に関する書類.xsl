<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:datetime="http://exslt.org/dates-and-times" >

    <!--テンプレート置き場-->





    <xsl:template match="Job">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:axf="http://www.antennahouse.com/names/XSL/Extensions">
            <!-- ページレイアウト定義 -->
            <fo:layout-master-set>
                <fo:simple-page-master margin-right="5mm" margin-left="5mm" margin-bottom="5mm" margin-top="5mm" page-height="297mm" page-width="210mm" master-name="A4">
                <fo:region-body margin="0mm" />
                <fo:region-before extent="0mm" />
                <fo:region-after extent="0mm" />
                <fo:region-start extent="0mm" />
                <fo:region-end extent="0mm" />
                </fo:simple-page-master>
            </fo:layout-master-set>
        








            <!-- ページ開始 -->
            <xsl:for-each select="Item">

                <!--タイトル-->
                <fo:page-sequence font-family="IPA Gothic" master-reference="A4">
                    <fo:flow flow-name="xsl-region-body">
                        <fo:block font-size="8" text-align="left" margin-top="2mm" >
                            職業安定法第５条の３により、この書面にて労働条件等を明示します。
                        </fo:block>

                        <fo:block font-size="8" text-align="right">
                            <xsl:value-of select="substring(/Job/System/CurrentDateTime,1,4)"/>年<xsl:value-of select="substring(/Job/System/CurrentDateTime,6,2)"/>月<xsl:value-of select="substring(/Job/System/CurrentDateTime,9,2)"/>日　現在
                        </fo:block>

                        <fo:block font-size="20pt" text-align="center" margin-top="2mm" margin-bottom="2mm">  求人者 
                            <fo:inline font-size="20pt">→</fo:inline> 職業紹介事業 
                            <fo:inline font-size="20pt">→</fo:inline> 求職者 
                        </fo:block> 



                        <!--1列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="80%"/>
                                <fo:table-body display-align="center">
                                    <fo:table-row height="7mm" >
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                求人者の氏名又は名称
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black">
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.P_Client/Client/Client.P_Name"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                        </fo:table>
                        <!--1列目ここまで-->

                        <!--2列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="10%"/>
                            <fo:table-column column-number="3" column-width="30%"/>
                            <fo:table-column column-number="4" column-width="10%"/>
                            <fo:table-column column-number="5" column-width="30%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                業務内容
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                雇い入れ直後
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.P_Position"/>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                変更の範囲
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_C4FC7CF052B307E64841E86A2D6CBB"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        
                                    </fo:table-row>
                                </fo:table-body>
                        </fo:table>
                        <!--2列目ここまで-->

                        <!--3列目-->    
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="10%"/>
                            <fo:table-column column-number="3" column-width="30%"/>
                            <fo:table-column column-number="4" column-width="40%"/>
                                <fo:table-body>
                                    <fo:table-row height="3mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" number-rows-spanned="2">
                                            <fo:block font-size="8">
                                                契約期間
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" number-rows-spanned="2">
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_07649FD06B4E91D8046C0016F836A0"/>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" border="solid 1pt black">
                                            <fo:block font-size="8">
                                                （有期雇用の場合の雇用契約期間）			
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell  background-color="#E6E6E6" padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                有期の場合の更新回数等						
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                    <fo:table-row height="3mm">
                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_CEA92C99CB83D3CBA4AB4581F580AB"/>
                                            </fo:block>
                                        </fo:table-cell>


                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_77C4AE780F1DE8639609A1A8D64EB1"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>
                        <!--3列目ここまで-->

                        <!--4列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="10%"/>
                            <fo:table-column column-number="3" column-width="20%"/>
                            <fo:table-column column-number="4" column-width="50%"/>

                                <fo:table-body>
                                    <fo:table-row height="3mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" number-rows-spanned="7">
                                            <fo:block font-size="8">
                                                試用期間
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" number-rows-spanned="7">
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_F1232037E0A4B8CD4E4BA9FC837265"/>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                雇用形態
                                            </fo:block>
                                        </fo:table-cell>                                        

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black">
                                            <fo:block font-size="8">
                                                <!--入っていた場合のみ表示 テスト-->
                                                <xsl:if test="Job.U_69A30FC3B9376B3E2D7FDA1CA603F4 != ''">
                                                    <xsl:value-of select="Job.U_69A30FC3B9376B3E2D7FDA1CA603F4"/>
                                                </xsl:if>
                                                <xsl:if test="Job.U_69A30FC3B9376B3E2D7FDA1CA603F4 = ''">
                                                    変更なし
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>                                        

                                    </fo:table-row>

                                    <fo:table-row height="3mm">

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                支給区分
                                            </fo:block>
                                        </fo:table-cell> 

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_DB76ED588556594C782A91D2376DA7 != ''">
                                                    <xsl:value-of select="Job.U_DB76ED588556594C782A91D2376DA7"/>
                                                </xsl:if>
                                                <xsl:if test="Job.U_DB76ED588556594C782A91D2376DA7 = ''">
                                                    変更なし
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>

                                    </fo:table-row>

                                    <fo:table-row height="3mm">

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                平均所定労働時間
                                            </fo:block>
                                        </fo:table-cell> 

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_7FD228D8EA3373BED7374BA194ACB5 != ''">
                                                    <xsl:value-of select="Job.U_7FD228D8EA3373BED7374BA194ACB5"/>時間
                                                </xsl:if>
                                                <xsl:if test="Job.U_7FD228D8EA3373BED7374BA194ACB5 = ''">
                                                    変更なし
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>

                                    </fo:table-row>

                                    <fo:table-row height="3mm">

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                給与
                                            </fo:block>
                                        </fo:table-cell>   

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black">
                                            <fo:block font-size="8">
                                                <!--入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_7B21AF9D54A148BEB270B6B348D9AB != ''">
                                                    <xsl:value-of select="Job.U_7B21AF9D54A148BEB270B6B348D9AB"/>万円
                                                </xsl:if>
                                                <xsl:if test="Job.U_7B21AF9D54A148BEB270B6B348D9AB = ''">
                                                    変更なし
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                    <fo:table-row height="3mm">

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                給与(下限金額)
                                            </fo:block>
                                        </fo:table-cell>   

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_984A8F1F5DE170232604C8B2BE39E3 != ''">
                                                    <xsl:value-of select="Job.U_984A8F1F5DE170232604C8B2BE39E3"/>万円
                                                </xsl:if>
                                                <xsl:if test="Job.U_984A8F1F5DE170232604C8B2BE39E3 = ''">
                                                    変更なし
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                    <fo:table-row height="3mm">

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                給与(上限金額)
                                            </fo:block>
                                        </fo:table-cell>   

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_CD06E49D912E21CFB11C4D1F724BD1 != ''">
                                                    <xsl:value-of select="Job.U_CD06E49D912E21CFB11C4D1F724BD1"/>万円
                                                </xsl:if>
                                                <xsl:if test="Job.U_CD06E49D912E21CFB11C4D1F724BD1 = ''">
                                                    変更なし
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                    <fo:table-row height="3mm">

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                変更詳細
                                            </fo:block>
                                        </fo:table-cell>   


                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_CF1D4024D8AC3F67053820B0EE5D97 != ''">
                                                    <xsl:value-of select="Job.U_CF1D4024D8AC3F67053820B0EE5D97"/>
                                                </xsl:if>
                                                <xsl:if test="Job.U_CF1D4024D8AC3F67053820B0EE5D97 = ''">
                                                    ー
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>
                        <!--4列目ここまで-->

                        <!--5列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="10%"/>
                            <fo:table-column column-number="3" column-width="10%"/>
                            <fo:table-column column-number="4" column-width="25%"/>
                            <fo:table-column column-number="5" column-width="10%"/>
                            <fo:table-column column-number="6" column-width="25%"/>
                                <fo:table-body>

                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" number-rows-spanned="2">
                                            <fo:block font-size="8">
                                                就業場所
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                （事業所名）
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" number-columns-spanned="4">
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_DFBCE4933772B43BFF511933AD973C"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                （所在地）	
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                （雇入れ直後）
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_151BA1BDEEF73B0EEF24ED1700FF32"/>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                （変更の範囲）
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_729CF6AA6C9FDFA254F03CFC26F457"/>
                                            </fo:block>
                                        </fo:table-cell>

                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>
                        <!--5列目ここまで-->

                        <!--6列目-->
                        <!--勤務時間１-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="10%"/>
                            <fo:table-column column-number="3" column-width="15%"/>
                            <fo:table-column column-number="4" column-width="10%"/>
                            <fo:table-column column-number="5" column-width="15%"/>
                            <fo:table-column column-number="6" column-width="15%"/>
                            <fo:table-column column-number="7" column-width="15%"/>
                                <fo:table-body>

                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                就業時間　１
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                始業
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_0346EA26FD1CAF7010C01064B9910E"/>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                終業
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_7064B78B0B422FB913016348CA4BBA"/>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                （　内、<xsl:value-of select="Job.U_A455E7C0A22E9E90F75EAA81E60CFA"/>　時間）
                                            </fo:block>
                                        </fo:table-cell>
                                       
                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                休憩：　<xsl:value-of select="Job.U_7A8EC8FDE659100CD547AE989886F8"/>　分
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>

                        <!--勤務時間２-->
                        <!--勤務時間２のいずれかの項目に値が入っていたら表示する-->
                        <xsl:choose>
                            <xsl:when test="Job.U_CB2B2C5772BB4EC608ACE2493C3923 ! = '' or Job.U_5E208F71CAB16FA8D8F79F5628449E ! = ''  or Job.U_E3629164B578D26B0C7F8F0B7738B9 ! = '' or Job.U_09DBF28B95B1F513CEACF1A1741295 ! = ''" >
                                <fo:table table-layout="fixed">
                                    <fo:table-column column-number="1" column-width="20%"/>
                                    <fo:table-column column-number="2" column-width="10%"/>
                                    <fo:table-column column-number="3" column-width="15%"/>
                                    <fo:table-column column-number="4" column-width="10%"/>
                                    <fo:table-column column-number="5" column-width="15%"/>
                                    <fo:table-column column-number="6" column-width="15%"/>
                                    <fo:table-column column-number="7" column-width="15%"/>
                                        <fo:table-body>
                                            <fo:table-row height="7mm">
                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        就業時間　２
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        始業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_CB2B2C5772BB4EC608ACE2493C3923"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        終業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_5E208F71CAB16FA8D8F79F5628449E"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        （　内、<xsl:value-of select="Job.U_E3629164B578D26B0C7F8F0B7738B9"/>　時間）
                                                    </fo:block>
                                                </fo:table-cell>
                                            
                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        休憩：　<xsl:value-of select="Job.U_09DBF28B95B1F513CEACF1A1741295"/>　分
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                </fo:table>
                            </xsl:when>
                            <xsl:otherwise>
                            </xsl:otherwise>
                        </xsl:choose>

                        <!--勤務時間３-->
                        <!--勤務時間３のいずれかの項目に値が入っていたら表示する-->
                        <xsl:choose>
                            <xsl:when test="Job.U_147DBDCF83733860B57382B42E3379 ! = '' or Job.U_0D3F56C7B9CDEFAF0ED99388D76CC8 ! = ''  or Job.U_A0D2C9EA7B1F403BA1D20173F7F8A6 ! = '' or Job.U_DC872A208D495224BACDF3196040CE ! = ''" >
                                <fo:table table-layout="fixed">
                                    <fo:table-column column-number="1" column-width="20%"/>
                                    <fo:table-column column-number="2" column-width="10%"/>
                                    <fo:table-column column-number="3" column-width="15%"/>
                                    <fo:table-column column-number="4" column-width="10%"/>
                                    <fo:table-column column-number="5" column-width="15%"/>
                                    <fo:table-column column-number="6" column-width="15%"/>
                                    <fo:table-column column-number="7" column-width="15%"/>
                                        <fo:table-body>
                                            <fo:table-row height="7mm">
                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        就業時間　３
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        始業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_147DBDCF83733860B57382B42E3379"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        終業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_0D3F56C7B9CDEFAF0ED99388D76CC8"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        （　内、<xsl:value-of select="Job.U_A0D2C9EA7B1F403BA1D20173F7F8A6"/>　時間）
                                                    </fo:block>
                                                </fo:table-cell>
                                            
                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        休憩：　<xsl:value-of select="Job.U_DC872A208D495224BACDF3196040CE"/>　分
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                </fo:table>
                            </xsl:when>
                            <xsl:otherwise>
                            </xsl:otherwise>
                        </xsl:choose>


                        <!--勤務時間４-->
                        <!--勤務時間４のいずれかの項目に値が入っていたら表示する-->
                        <xsl:choose>
                            <xsl:when test="Job.U_4A712C84D1BF3F8D5508C22B0E3345 ! = '' or Job.U_AB0409BBB78C48CE60FD1F8C84992A ! = ''  or Job.U_8FBE382542678D0A86D135D38657D9 ! = '' or Job.U_F9F714B4043752B98F8AC061BEA1FB ! = ''" >
                                <fo:table table-layout="fixed">
                                    <fo:table-column column-number="1" column-width="20%"/>
                                    <fo:table-column column-number="2" column-width="10%"/>
                                    <fo:table-column column-number="3" column-width="15%"/>
                                    <fo:table-column column-number="4" column-width="10%"/>
                                    <fo:table-column column-number="5" column-width="15%"/>
                                    <fo:table-column column-number="6" column-width="15%"/>
                                    <fo:table-column column-number="7" column-width="15%"/>
                                        <fo:table-body>
                                            <fo:table-row height="7mm">
                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        就業時間　４
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        始業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_4A712C84D1BF3F8D5508C22B0E3345"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        終業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_AB0409BBB78C48CE60FD1F8C84992A"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        （　内、<xsl:value-of select="Job.U_8FBE382542678D0A86D135D38657D9"/>　時間）
                                                    </fo:block>
                                                </fo:table-cell>
                                            
                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        休憩：　<xsl:value-of select="Job.U_F9F714B4043752B98F8AC061BEA1FB"/>　分
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                </fo:table>
                            </xsl:when>
                            <xsl:otherwise>
                            </xsl:otherwise>
                        </xsl:choose>


                        <!--勤務時間５-->
                        <!--勤務時間５のいずれかの項目に値が入っていたら表示する-->
                        <xsl:choose>
                            <xsl:when test="Job.U_403E08667F54004083882DAAFF5600 ! = '' or Job.U_084B39BAD90C92F1226F5634D145E3 ! = ''  or Job.U_BD553FCCED9790141BCB77C11000CE ! = '' or Job.U_D3F6061710432C53FD81D60D657D12 ! = ''" >
                                <fo:table table-layout="fixed">
                                    <fo:table-column column-number="1" column-width="20%"/>
                                    <fo:table-column column-number="2" column-width="10%"/>
                                    <fo:table-column column-number="3" column-width="15%"/>
                                    <fo:table-column column-number="4" column-width="10%"/>
                                    <fo:table-column column-number="5" column-width="15%"/>
                                    <fo:table-column column-number="6" column-width="15%"/>
                                    <fo:table-column column-number="7" column-width="15%"/>
                                        <fo:table-body>
                                            <fo:table-row height="7mm">
                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        就業時間　５
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        始業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_403E08667F54004083882DAAFF5600"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        終業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_084B39BAD90C92F1226F5634D145E3"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        （　内、<xsl:value-of select="Job.U_BD553FCCED9790141BCB77C11000CE"/>　時間）
                                                    </fo:block>
                                                </fo:table-cell>
                                            
                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        休憩：　<xsl:value-of select="Job.U_D3F6061710432C53FD81D60D657D12"/>　分
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                </fo:table>
                            </xsl:when>
                            <xsl:otherwise>
                            </xsl:otherwise>
                        </xsl:choose>


                        <!--勤務時間６-->
                        <!--勤務時間６のいずれかの項目に値が入っていたら表示する-->
                        <xsl:choose>
                            <xsl:when test="Job.U_0278D1D2E518D270EC26F99BF0ED71 ! = '' or Job.U_DE1DBB069FF6A7648DCD751BE2976F ! = ''  or Job.U_BAD2F7A06698A5DB8E7D429D8338E6 ! = '' or Job.U_A0F1ECB5BD6D779E5C5A3357642F24 ! = ''" >
                                <fo:table table-layout="fixed">
                                    <fo:table-column column-number="1" column-width="20%"/>
                                    <fo:table-column column-number="2" column-width="10%"/>
                                    <fo:table-column column-number="3" column-width="15%"/>
                                    <fo:table-column column-number="4" column-width="10%"/>
                                    <fo:table-column column-number="5" column-width="15%"/>
                                    <fo:table-column column-number="6" column-width="15%"/>
                                    <fo:table-column column-number="7" column-width="15%"/>
                                        <fo:table-body>
                                            <fo:table-row height="7mm">
                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        就業時間　６
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        始業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_0278D1D2E518D270EC26F99BF0ED71"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        終業
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center"  text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        <xsl:value-of select="Job.U_DE1DBB069FF6A7648DCD751BE2976F"/>
                                                    </fo:block>
                                                </fo:table-cell>

                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        （　内、<xsl:value-of select="Job.U_BAD2F7A06698A5DB8E7D429D8338E6"/>　時間）
                                                    </fo:block>
                                                </fo:table-cell>
                                            
                                                <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                    <fo:block font-size="8">
                                                        休憩：　<xsl:value-of select="Job.U_A0F1ECB5BD6D779E5C5A3357642F24"/>　分
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </fo:table-body>
                                </fo:table>
                            </xsl:when>
                            <xsl:otherwise>
                            </xsl:otherwise>
                        </xsl:choose>
                        <!--6列目ここまで-->


                        <!--7列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="80%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                就業時間補足
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_A1A16453DC2E9E75D1B313E683B750"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                        </fo:table>
                        <!--7列目ここまで-->

                        <!--8列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="80%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" number-rows-spanned="2">
                                            <fo:block font-size="8">
                                                休日
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">

                                                <xsl:if test="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040611 != ''">
                                                    <xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040611"/>
                                                        <xsl:text> 
                                                        </xsl:text>
                                                </xsl:if>

                                                <xsl:if test="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040612 != ''">
                                                    <xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040612"/>
                                                        <xsl:text> 
                                                        </xsl:text>
                                                </xsl:if>

                                                <xsl:if test="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040613 != ''">
                                                    <xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040613"/>
                                                        <xsl:text>
                                                        </xsl:text>
                                                </xsl:if>

                                                <xsl:if test="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040614 != ''">
                                                    <xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040614"/>
                                                        <xsl:text>
                                                        </xsl:text>
                                                </xsl:if>

                                                <xsl:if test="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040615 != ''">
                                                    <xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040615"/>
                                                        <xsl:text> 
                                                        </xsl:text>
                                                </xsl:if>

                                                <xsl:if test="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040616 != ''">
                                                    <xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040616"/>
                                                        <xsl:text>
                                                        </xsl:text>
                                                </xsl:if>

                                                <xsl:if test="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040617 != ''">
                                                    <xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040617"/>
                                                        <xsl:text>
                                                        </xsl:text>
                                                </xsl:if>

                                                <xsl:if test="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040618 != ''">
                                                    <xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_040618"/>
                                                        <xsl:text>
                                                        </xsl:text>
                                                </xsl:if>

                                                <xsl:if test="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_041158 != ''">
                                                    <xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97/Option.U_041158"/>
                                                        <xsl:text>
                                                        </xsl:text>
                                                </xsl:if>

                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>






                                    <fo:table-row height="7mm">
                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_4C207226142D567DE698AC64A7EEF0"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>
                        <!--8列目ここまで-->

                        <!--9列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="10%"/>
                            <fo:table-column column-number="3" column-width="10%"/>
                            <fo:table-column column-number="4" column-width="60%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                時間外労働時間
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell  padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--1ヶ月の平均残業時間が入っていた場合「あり」と表示-->
                                                <xsl:variable name="val" select="Job.U_E4E31EF3767D8681F3FA1201E4B56E"/>
                                                    <xsl:choose>
                                                        <xsl:when test="number($val) > = 0.1 "> 
                                                            <xsl:value-of select="'あり'"/>
                                                        </xsl:when>
                                                        <xsl:otherwise> 
                                                            <xsl:value-of select="'なし'"/> 
                                                        </xsl:otherwise> 
                                                    </xsl:choose>

                                            </fo:block>


                                        </fo:table-cell>

                                         <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                ＜ありの場合＞
                                            </fo:block>
                                        </fo:table-cell>                                       

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">

                                                <!--1ヶ月の平均残業時間が入っていた場合のみ表示-->
                                                <xsl:variable name="val" select="Job.U_E4E31EF3767D8681F3FA1201E4B56E"/>
                                                    <xsl:choose>
                                                        <xsl:when test="number($val) > = 0.1 "> 
                                                            １ヶ月平均　<xsl:value-of select="Job.U_E4E31EF3767D8681F3FA1201E4B56E"/>　時間
                                                        </xsl:when>
                                                        <xsl:otherwise> 
                                                            <xsl:value-of select="''"/> 
                                                        </xsl:otherwise> 
                                                    </xsl:choose>


                                            </fo:block>
                                        </fo:table-cell>

  
                                    </fo:table-row>
                                </fo:table-body>
                        </fo:table>
                        <!--9列目ここまで-->


                        <!--10列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="10%"/>
                            <fo:table-column column-number="3" column-width="10%"/>
                            <fo:table-column column-number="4" column-width="25%"/>
                            <fo:table-column column-number="5" column-width="10%"/>
                            <fo:table-column column-number="6" column-width="25%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black">
                                            <fo:block font-size="8">
                                                賃金（見込額）
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_33C689376BEC4DDAF1E973C4CE97A1"/>
                                            </fo:block>
                                        </fo:table-cell>

                                         <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                基本給
                                            </fo:block>
                                        </fo:table-cell>                                       

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_D904C42164777C8EB307DB20B2B0AC"/>円
                                            </fo:block>
                                        </fo:table-cell>

                                        <!--通勤手当-->
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                                <fo:block font-size="8" wrap-option="wrap">
                                                    通勤手当
                                                </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black">
                                            <fo:block font-size="8" wrap-option="wrap">
                                                <xsl:value-of select="Job.U_485A930A79CD6BF584737F1ABE5C8E"/>
                                            </fo:block>

                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_892F967A87DCEC8B7E213745B8E153"/>
                                            </fo:block>
                                        </fo:table-cell>   

                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>
                        <!--10列目ここまで-->





                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="10%"/>
                            <fo:table-column column-number="3" column-width="25%"/>
                            <fo:table-column column-number="4" column-width="25%"/>
                            <fo:table-column column-number="5" column-width="20%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black">
                                            <fo:block font-size="8">
                                                定期的に支払われる手当
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black">
                                            <fo:block font-size="8" wrap-option="wrap">
                                            <xsl:if test="Job.U_28853B8E83F579F58EEB12562866DD != ''">
                                                <xsl:value-of select="'あり'"/>
                                            </xsl:if>
                                            <xsl:if test="Job.U_28853B8E83F579F58EEB12562866DD = ''">
                                                <xsl:value-of select="'なし'"/>
                                            </xsl:if>
                                            
                                            </fo:block>
                                        </fo:table-cell>

                                        <!--定期的に支払われる手当１-->
                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black">                                        

                                            <fo:block font-size="8" wrap-option="wrap">
                                                <xsl:value-of select="Job.U_522EFEBDCE533F17301E4A8F5B0142"/>
                                            </fo:block>
                                            <fo:block font-size="8">
                                            <xsl:if test="Job.U_28853B8E83F579F58EEB12562866DD != ''">
                                                <xsl:value-of select="Job.U_28853B8E83F579F58EEB12562866DD"/>円
                                            </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>   

                                        <!--定期的に支払われる手当２-->
                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black">
                                            <fo:block font-size="8" wrap-option="wrap">
                                                <xsl:value-of select="Job.U_C3169FAD15C146F93DA4FD34010BFE"/>
                                            </fo:block>

                                            <fo:block font-size="8">
                                            <xsl:if test="Job.U_B19697F9E2C84586131B7BA4CE6E91 != ''">
                                                <xsl:value-of select="Job.U_B19697F9E2C84586131B7BA4CE6E91"/>円
                                            </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>   

                                        <!--定期的に支払われる手当３-->
                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black">
                                            <fo:block font-size="8" wrap-option="wrap">
                                                <xsl:value-of select="Job.U_95FE20A6B7F36F74CB1DB8459AE21C"/>
                                            </fo:block>

                                            <fo:block font-size="8">
                                            <xsl:if test="Job.U_CA490F738C03EDF2F4D09B83C96D70 != ''">
                                                <xsl:value-of select="Job.U_CA490F738C03EDF2F4D09B83C96D70"/>円
                                            </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>   


                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>
                        

                        <!--11列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="20%"/>
                            <fo:table-column column-number="3" column-width="20%"/>
                            <fo:table-column column-number="4" column-width="20%"/>
                            <fo:table-column column-number="5" column-width="20%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" number-rows-spanned="2">
                                            <fo:block font-size="8">
                                                加入保険等
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--健康保険が入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_001168 != ''">
                                                    <xsl:value-of select="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_001168"/>
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--厚生年金が入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_001169 != ''">
                                                    <xsl:value-of select="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_001169"/>
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--雇用保険が入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_001170 != ''">
                                                    <xsl:value-of select="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_001170"/>
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--労災保険が入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_001171 != ''">
                                                    <xsl:value-of select="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_001171"/>
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                    <fo:table-row height="7mm">

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--国民健康保険が入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_041862 != ''">
                                                    <xsl:value-of select="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_041862"/>
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--財形が入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_041863 != ''">
                                                    <xsl:value-of select="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_041863"/>
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--退職金共済が入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_041864 != ''">
                                                    <xsl:value-of select="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_041864"/>
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <!--退職金制度が入っていた場合のみ表示-->
                                                <xsl:if test="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_041865 != ''">
                                                    <xsl:value-of select="Job.U_1D1173AFAE0BD5908DD19DC66B0EDC/Option.U_041865"/>
                                                </xsl:if>
                                            </fo:block>
                                        </fo:table-cell>

                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>
                        <!--11列目ここまで-->

                        <!--12列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="80%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                受動喫煙防止に向けた取組
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_F3D23E3974DCF7933792DE8A4CB766"/>
                                            </fo:block>
                                        </fo:table-cell>

                                    </fo:table-row>
                                </fo:table-body>
                        </fo:table>
                        <!--12列目ここまで-->

                        <!--13列目-->
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="20%"/>
                            <fo:table-column column-number="2" column-width="80%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" text-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                雇用形態
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_F1F979B879513F6EE68C6E52436E23"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        
                                    </fo:table-row>
                                </fo:table-body>
                        </fo:table>
                        <!--13列目ここまで-->




                        <!--14列目-->
                        <!--(特記事項)は一旦なしで良いとのこと　25/11/27(佐藤さん)

                        <fo:table table-layout="fixed"  margin-top="10mm">
                            <fo:table-column column-number="1" column-width="100%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell background-color="#E6E6E6" padding="1mm" display-align="center" border="solid 1pt black" >
                                            <fo:block font-size="8">
                                                （特記事項）
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>

                        -->
                        <!--14列目ここまで-->



                        <!--15列目-->
                                                                <!--
                        <fo:table table-layout="fixed">
                            <fo:table-column column-number="1" column-width="100%"/>
                                <fo:table-body>
                                    <fo:table-row height="7mm">
                                        <fo:table-cell padding="1mm" display-align="before" border="solid 1pt black" >

                                            <fo:block font-size="8">
                                                <xsl:value-of select="Job.U_F1F979B879513F6EE68C6E52436E23"/>
                                            </fo:block>

                                        </fo:table-cell>

                                    </fo:table-row>

                                </fo:table-body>
                        </fo:table>
                                                                -->
                        <!--15列目ここまで-->







                    </fo:flow>
                </fo:page-sequence>
            </xsl:for-each>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>