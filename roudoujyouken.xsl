<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:datetime="http://exslt.org/dates-and-times" xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">
	<xsl:attribute-set name="cell-base">
		<xsl:attribute name="border-left">0.8pt solid</xsl:attribute>
		<xsl:attribute name="border-bottom">0.8pt solid</xsl:attribute>
		<xsl:attribute name="border-top">0.8pt solid</xsl:attribute>
		<xsl:attribute name="border-right">0.8pt solid</xsl:attribute>
		<xsl:attribute name="display-align">center</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="left-bottom">
		<xsl:attribute name="border-left">0.8pt solid</xsl:attribute>
		<xsl:attribute name="border-top">0.8pt solid</xsl:attribute>
		<xsl:attribute name="border-bottom">0.8pt solid</xsl:attribute>
		<xsl:attribute name="display-align">center</xsl:attribute>
	</xsl:attribute-set>
	<xsl:template match="Job">

		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			


			<fo:layout-master-set>
				<fo:simple-page-master margin-right="12mm" margin-left="12mm" margin-bottom="5mm"
					margin-top="5mm" page-height="297mm" page-width="210mm" master-name="A4">
					<fo:region-body margin-top="40mm" />
					<fo:region-before extent="40mm" />
					<fo:region-after extent="0mm" />
					<fo:region-start extent="0mm" />
					<fo:region-end extent="0mm" />
				</fo:simple-page-master>
				<fo:simple-page-master margin-right="10mm" margin-left="10mm" margin-bottom="5mm"
					margin-top="5mm" page-height="297mm" page-width="210mm" master-name="A4-page2">
					<fo:region-body margin-top="5mm" />
				</fo:simple-page-master>

				<fo:page-sequence-master master-name="document">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="A4"
							page-position="first" />
						<fo:conditional-page-master-reference master-reference="A4-page2"
							page-position="rest" />
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
			</fo:layout-master-set>

			<xsl:for-each select="Item">
				<fo:page-sequence master-reference="document" font-family="IPA Gothic, IPAGothic, Segoe UI Symbol"
					font-size="10pt">
					<fo:static-content flow-name="xsl-region-before">
						<fo:block text-align="left" font-size="10pt" padding-top="15mm">
							職業安定法第５条の３により、この書面にて就労条件等を明示します。
						</fo:block>
						<!--ロゴ-->
						<fo:block-container absolute-position="absolute" margin-top="10mm">
							<fo:block text-align="right" margin-right="2mm">
								<fo:external-graphic src="logo.png" content-height="scale-down-to-fit" content-width="scale-down-to-fit" height="20mm" width="50mm"/>
							</fo:block>
						</fo:block-container>
						<!-- 日付 -->
						<fo:block margin-top="10mm">
							<fo:inline-container width="50%" text-align="left">
								<fo:block>
									
								</fo:block>
							</fo:inline-container>
							<fo:inline-container width="50%" text-align="right">
								<fo:block margin-right="3mm">
									<xsl:value-of select="substring(/Job/System/CurrentDateTime,1,4)"/>年<xsl:value-of select="substring(/Job/System/CurrentDateTime,6,2)"/>月<xsl:value-of select="substring(/Job/System/CurrentDateTime,9,2)"/>日
								</fo:block>
							</fo:inline-container>
						</fo:block>
					</fo:static-content>
					<!-- 本文 -->
					<fo:flow flow-name="xsl-region-body">
						<fo:block text-align="center" font-size="18pt">
							<fo:inline>
								求人者
							</fo:inline>
							<fo:inline font-size="22pt">
								➔
							</fo:inline>
							<fo:inline>
								職業紹介事業者
							</fo:inline>
							<fo:inline font-size="22pt">
								➔
							</fo:inline>
							<fo:inline>
								求職者
							</fo:inline>
						</fo:block>
						<fo:table table-layout="fixed" margin-top="5mm" border-collapse="collapse">
							<fo:table-column column-number="1" column-width="20%"/>
							<fo:table-column column-number="2" column-width="20%"/>
							<fo:table-column column-number="3" column-width="20%"/>
							<fo:table-column column-number="4" column-width="20%"/>
							<fo:table-column column-number="5" column-width="20%"/>
							<fo:table-body>
								<!-- １行目 -->
								<fo:table-row line-height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center" line-height="12pt">
											求人者の
										</fo:block>
										<fo:block text-align="center" line-height="12pt">
											氏名又は名称
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-columns-spanned="4">
										<fo:block >
											<fo:inline padding-left="2mm">
												<xsl:value-of select="Job.P_Client/Client/Client.P_Name"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!-- ２行目 -->
								<fo:table-row line-height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											業 務 内 容
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="4">
										<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
											<fo:table-column column-number="1" column-width="proportional-column-width(1)"/>
											<fo:table-column column-number="2" column-width="proportional-column-width(6)"/>
											<fo:table-column column-number="3" column-width="proportional-column-width(1)"/>
											<fo:table-column column-number="4" column-width="proportional-column-width(6)"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell display-align="center" border-right="0.2pt solid" font-size="9pt" line-height="9pt">
														<fo:block text-align="center" line-height="9pt">
															雇入れ
														</fo:block>
														<fo:block text-align="center" line-height="9pt">
															直後
														</fo:block>
													</fo:table-cell>
													<fo:table-cell display-align="center" border-right="0.8pt solid">
														<fo:block line-height="9pt">
															<fo:inline padding-left="2mm">
																<xsl:value-of select="Job.P_Position"/>
															</fo:inline>
														</fo:block>
													</fo:table-cell>
													
													<fo:table-cell display-align="center" font-size="9pt" border-right="0.2pt solid" line-height="9pt">
														<fo:block text-align="center" line-height="9pt">
															変更の
														</fo:block>
														<fo:block text-align="center" line-height="9pt">
															範囲
														</fo:block>
													</fo:table-cell>
													<fo:table-cell display-align="center" border-right="0.8pt solid">
														<fo:block>
															<fo:inline padding-left="2mm">
																<xsl:value-of select="Job.U_42782F5E61EF026FA9634953F11A12"/>
															</fo:inline>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
								<!-- ３行目 -->
								<fo:table-row line-height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center" line-height="9pt">
											契 約 期 間
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="4">
										<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
											<fo:table-column column-number="1" column-width="proportional-column-width(1)"/>
											<fo:table-column column-number="2" column-width="proportional-column-width(3)"/>
											<fo:table-column column-number="3" column-width="proportional-column-width(3)"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell display-align="center" border-right="0.2pt solid" border-top="0.8pt solid">
														<fo:block text-align="center">
															有期雇用
														</fo:block>
													</fo:table-cell>
													<fo:table-cell display-align="center" font-size="8pt" border-top="0.8pt solid">
														<fo:block text-align="center" line-height="9pt">
															(有期雇用の場合の雇用契約期間)
														</fo:block>
														<fo:block text-align="center" line-height="9pt">
															<xsl:choose>
																<xsl:when test="Job.U_E4108EB0F1DA00DFBB762A5441C9AB !=''">
																	<xsl:value-of select="Job.U_E4108EB0F1DA00DFBB762A5441C9AB"/>
																</xsl:when>
																<xsl:otherwise>
																	&#xA0;
																</xsl:otherwise>
															</xsl:choose>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell display-align="center" font-size="8pt" border-top="0.8pt solid" border-right="0.8pt solid">
														<fo:block text-align="center" line-height="9pt">
															有期の場合の更新回数等
														</fo:block>
														<fo:block text-align="center" line-height="9pt">
															<xsl:choose>
																<xsl:when test="Job.U_974FC8134F998C46D68762954A32E2 !=''">
																	<xsl:value-of select="Job.U_974FC8134F998C46D68762954A32E2"/>
																</xsl:when>
																<xsl:otherwise>
																	&#xA0;
																</xsl:otherwise>
															</xsl:choose>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
								<!-- ４行目 -->
								<fo:table-row line-height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center" line-height="9pt">
											試 用 期 間
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-columns-spanned="4">
										<fo:block>
											<fo:inline padding-left="10mm">
												<xsl:value-of select="Job.U_F1232037E0A4B8CD4E4BA9FC837265"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!-- ５行目 -->
								<fo:table-row line-height="14mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											就 業 場 所
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="4">
										<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
											<fo:table-column column-number="1" column-width="proportional-column-width(1)"/>
											<fo:table-column column-number="2" column-width="proportional-column-width(3)"/>
											<fo:table-column column-number="3" column-width="proportional-column-width(3)"/>
											<fo:table-body>
												<fo:table-row line-height="7mm">
													<fo:table-cell display-align="center" border-right="0.8pt solid">
														<fo:block text-align="center">
															(事業所名)
														</fo:block>
													</fo:table-cell>

													<fo:table-cell display-align="center" number-columns-spanned="2" border-right="0.8pt solid" border-bottom="0.8pt solid">
														<fo:block>
															<fo:inline padding-left="2mm">
																<xsl:value-of select="Job.P_Recruiter/Recruiter/Recruiter.P_Name"/>
															</fo:inline>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>

												<fo:table-row line-height="7mm">
													<fo:table-cell display-align="center" border-right="0.8pt solid" border-top="0.8pt solid">
														<fo:block text-align="center">
															(所在地)
														</fo:block>
													</fo:table-cell>

													<fo:table-cell display-align="center" border-right="0.8pt solid">
														<fo:block>
															<fo:inline-container width="27%" text-align="left" font-size="8pt" vertical-align="middle">
																<fo:block text-align="center" line-height="9pt">
																	(雇入れ直後)
																</fo:block>
															</fo:inline-container>

															<fo:inline-container width="73%" text-align="right" font-size="9pt">
																<fo:block text-align="center" line-height="9pt">
																	<xsl:value-of select="Job.U_151BA1BDEEF73B0EEF24ED1700FF32"/>
																</fo:block>
															</fo:inline-container>
														</fo:block>
													</fo:table-cell>

													<fo:table-cell display-align="center" border-right="0.8pt solid">
														<fo:block>
															<fo:inline-container width="27%" text-align="left" font-size="8pt">
																<fo:block text-align="center" line-height="9pt">
																	(変更の範囲)
																</fo:block>
															</fo:inline-container>
															<fo:inline-container width="73%" text-align="right">
																<fo:block text-align="center" line-height="9pt">
																	<xsl:value-of select="Job.U_5E3CFC09FE0BFFC73F6A00CA40B23"/>
																</fo:block>
															</fo:inline-container>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
								<!-- ６行目 -->
								<xsl:variable name="time-start" select="Job.U_0346EA26FD1CAF7010C01064B9910E"/>
								<xsl:variable name="time-finish" select="Job.U_7064B78B0B422FB913016348CA4BBA"/>
								<fo:table-row line-height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											就 業 時 間
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-columns-spanned="4">
										<fo:block text-align="center">
											<fo:inline padding-left="2mm">
												始業　　
											</fo:inline>
											<fo:inline>
												<xsl:value-of select="concat(substring-before($time-start, '：'),'　時　　',substring-after($time-start, '：'),'　分　　')"/>
											</fo:inline>
											<fo:inline>
												～　就業　　
											</fo:inline>
											<fo:inline>
												<xsl:value-of select="concat(substring-before($time-finish, '：'),'　時　　',substring-after($time-finish, '：'),'　分　　')"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!-- ７行目 -->
								<fo:table-row line-height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											休 憩 時 間
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-columns-spanned="4">
										<fo:block>
											<fo:inline padding-left="2mm">
												<xsl:value-of select="concat('（　　',Job.U_7A8EC8FDE659100CD547AE989886F8, '　　分）')"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!-- ８行目 -->
								<fo:table-row line-height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											休 日
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-columns-spanned="4">
										<fo:block>
											<fo:inline padding="2mm">
												<xsl:value-of select="Job.U_5D7FD2074E132F4F9B2E97AAC7AF97"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>	
								</fo:table-row>
								<!-- ９行目 -->
								<fo:table-row line-height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											時間外労働時間
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="4" border-bottom="0.8pt solid">
										<fo:table table-layout="fixed" width="100%" border-collapse="collapse" >
											<fo:table-column column-number="1" column-width="proportional-column-width(1)"/>
											<fo:table-column column-number="2" column-width="proportional-column-width(5)"/>
											<fo:table-column column-number="3" column-width="proportional-column-width(2)"/>
											<fo:table-column column-number="4" column-width="proportional-column-width(6)"/>
											<fo:table-body>
												<fo:table-cell display-align="center" border-right="0.8pt solid">
													<fo:block text-align="center">
														&#xA0;
													</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" border-right="0.2pt solid">
													<fo:block text-align="center">
														＜有の場合＞　１ヶ月平均
													</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" border-right="0.2pt solid">
													<fo:block text-align="center">

													</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" border-right="0.8pt solid">
													<fo:block>
														<fo:inline padding-left="2mm">
															時間
														</fo:inline>
													</fo:block>
												</fo:table-cell>
											</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
								<!-- １０行目 -->
								<fo:table-row line-height="10mm" height="10mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-rows-spanned="2">
										<fo:block text-align="center" line-height="9pt">
											賃金
										</fo:block>
										<fo:block text-align="center" line-height="9pt">
											（見込額）
										</fo:block>
									</fo:table-cell>
									<fo:table-cell display-align="center" number-columns-spanned="4" border-bottom="0.8pt solid">
										<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
											<fo:table-column column-number="1" column-width="proportional-column-width(4.2)"/>
											<fo:table-column column-number="2" column-width="proportional-column-width(1.8)"/>
											<fo:table-column column-number="3" column-width="proportional-column-width(2)"/>
											<fo:table-column column-number="4" column-width="proportional-column-width(1.4)"/>
											<fo:table-column column-number="5" column-width="proportional-column-width(3.6)"/>
											<fo:table-column column-number="6" column-width="proportional-column-width(1)"/>
											<fo:table-body>
												<fo:table-cell display-align="center" border-right="0.2pt solid">
													<fo:block text-align="center" >
														時給
													</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" border-right="0.2pt solid">
													<fo:block text-align="center">
														基本給
													</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" border-right="0.2pt solid">
													<fo:block text-align="center">
														1300
													</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" border-right="0.2pt solid">
													<fo:block text-align="center">
														円
													</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="before" border-right="0.2pt solid">
													<fo:block text-align="center" font-size="8pt" line-height="8pt">
														定期的に支払われる手当											
													</fo:block>
													<fo:block text-align="center" line-height="9pt" padding-top="1mm">
														10000
													</fo:block>
												</fo:table-cell>
												<fo:table-cell display-align="center" border-right="0.8pt solid">
													<fo:block text-align="center">
														円
													</fo:block>
												</fo:table-cell>
											</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row line-height="7mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											通勤手当
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-columns-spanned="3">
										<fo:block>
											<fo:inline padding-left="1mm">
												<xsl:choose>
													<xsl:when test="Job.U_485A930A79CD6BF584737F1ABE5C8E = 'なし'">
														無
													</xsl:when>
													<xsl:otherwise>
														有
													</xsl:otherwise>
												</xsl:choose>
											</fo:inline>
											<fo:inline>
												<xsl:value-of select="Job.U_932A8371A132D6E8A8D06D7F702412"/>　　上限有り
											</fo:inline>
											<fo:inline>
												円迄
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!-- １１行目 -->
								<fo:table-row line-height="4.5mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-rows-spanned="2">
										<fo:block text-align="center">
											加 入 保 険 等
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											労災保険
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											厚生年金
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											雇用保険
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row line-height="4.5mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											雇用保険
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											健康保険
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									
								</fo:table-row>
								<!-- １２行目 -->
								<fo:table-row line-height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center" line-height="12pt">
											受動喫煙防止に
										</fo:block>
										<fo:block text-align="center" line-height="12pt">
											向 け た 取 組 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-columns-spanned="4">
										<fo:block>
											<fo:inline padding-left="1mm">
												<xsl:value-of select="Job.U_F3D23E3974DCF7933792DE8A4CB766"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!-- １３行目 -->
								<fo:table-row line-height="9pt">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											雇 用 形 態
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

							</fo:table-body>
						</fo:table>
					</fo:flow>
				</fo:page-sequence>
			</xsl:for-each>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>