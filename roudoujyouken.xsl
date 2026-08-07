<?xml version="1.1" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:datetime="http://exslt.org/dates-and-times">
   <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<fo:layout-master-set>
			<fo:simple-page-master margin-right="10mm" margin-left="10mm" margin-bottom="5mm" margin-top="5mm" page-height="297mm" page-mwidth="210mm" master-name="A4">
				<fo:region-body margin-top="13mm"/>
				<fo:region-before extent="30mm"/>
				<fo:region-after extent="0mm"/>
				<fo:region-start extent="0mm"/>
				<fo:region-end extent="0mm"/>
			</fo:simple-page-master>
			<fo:simple-page-master margin-right="10mm" margin-left="10mm" margin-bottom="5mm" margin-top="5mm" page-height="297mm" page-width="210mm" master-name="A2-page2">
				<fo:ragion-body margin-top="5mm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
   </fo:root>
</xsl:stylesheet>