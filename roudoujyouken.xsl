<?xml version="1.1" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:datetime="http://exslt.org/dates-and-times">
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

		<xsl:attribute-set name="cell-base">
			<xsl:attribute name="border-left">0.8pt solid</xsl:attribute>
			<xsl:attribute name="border-bottom">0.8pt solid</xsl:attribute>
			<xsl:attribute name="border-top">0.8pt solid</xsl:attribute>
			<xsl:attribute name="border-right">0.8pt solid</xsl:attribute>
			<xsl:attribute name="display-align">center</xsl:attribute>
		</xsl:attribute-set>

		<xsl:attribute name="left-bottom">
			<xsl:attribute name="border-left">0.8pt solid</xsl:attribute>
			<xsl:attribute name="border-top">0.8pt solid</xsl:attribute>
			<xsl:attribute name="border-bottom">0.8pt solid</xsl:attribute>
			<xsl:attribute name="display-align">center</xsl:attribute>
		</xsl:attribute>


		<fo:layout-master-set>
			<fo:simple-page-master margin-right="10mm" margin-left="10mm" margin-bottom="5mm"
				margin-top="5mm" page-height="297mm" page-mwidth="210mm" master-name="A4">
				<fo:region-body margin-top="13mm" />
				<fo:region-before extent="30mm" />
				<fo:region-after extent="0mm" />
				<fo:region-start extent="0mm" />
				<fo:region-end extent="0mm" />
			</fo:simple-page-master>
			<fo:simple-page-master margin-right="10mm" margin-left="10mm" margin-bottom="5mm"
				margin-top="5mm" page-height="297mm" page-width="210mm" master-name="A2-page2">
				<fo:ragion-body margin-top="5mm" />
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
			<fo:page-seuqnece master-reference="document" font-family="IPA Gothic, IPAGothic"
				font-size="9pt">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block text-align="center" font-size="16pt" padding-top="12mm">
						職業安定法第５条の３により、この書面にて就労条件等を明示します。</fo:block>
				</fo:static-content>
			</fo:page-seuqnece>
		</xsl:for-each>


	</fo:root>
</xsl:stylesheet>