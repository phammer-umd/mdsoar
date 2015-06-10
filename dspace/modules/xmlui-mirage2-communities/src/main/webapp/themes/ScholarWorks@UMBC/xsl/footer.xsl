<?xml version="1.0" encoding="UTF-8"?>
<!--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

-->
<!--
    TODO: Describe this XSL file
    Author: Alexey Maslov

-->

<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
                xmlns:dri="http://di.tamu.edu/DRI/1.0/"
                xmlns:mets="http://www.loc.gov/METS/"
                xmlns:xlink="http://www.w3.org/TR/xlink/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:dim="http://www.dspace.org/xmlns/dspace/dim"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:mods="http://www.loc.gov/mods/v3"
                xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="i18n dri mets xlink xsl dim xhtml mods dc">

    <!-- Like the header, the footer contains various miscellaneous text, links, and image placeholders -->
    <xsl:template name="buildFooter">
        <footer>
        	 <div class="row">
                    <hr/>
                    <div class="col-xs-12 col-sm-12 community_footer">
                        <div>
                            <img src="{$theme-path}/images/community_logo.png" class="community_footer_logo" />
                            <p>
                                <br/>
                                Institution address: 1000 Hilltop Circle, Baltimore, MD 21250<br/>
                                Institution website URL: <a href="http://aok.lib.umbc.edu">aok.lib.umbc.edu</a><br/>
                                Email: <a href="mailto:digitalrepository@lists.umbc.edu">digitalrepository@lists.umbc.edu</a><br/>
                                Phone number: <a href="tel:4104553021">410-455-3021</a><br/>
                                URL for form submission: <a href="http://aok.lib.umbc.edu/md-soar/submission">aok.lib.umbc.edu/md-soar/submission</a><br/>
                                URL for per institution MD-SOAR information: <a href="http://aok.lib.umbc.edu/md-soar/information">aok.lib.umbc.edu/md-soar/information</a>
                            </p>
                        </div>
                    </div>
                </div>
                <!--Invisible link to HTML sitemap (for search engines) -->
                <a class="hidden">
                    <xsl:attribute name="href">
                        <xsl:value-of
                                select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                        <xsl:text>/htmlmap</xsl:text>
                    </xsl:attribute>
                    <xsl:text>&#160;</xsl:text>
                </a>
            <p>&#160;</p>
        </footer>
    </xsl:template>

</xsl:stylesheet>