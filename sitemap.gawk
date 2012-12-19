#!/usr/bin/gawk -f
BEGIN {
    {print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"}
    {print "<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">"}
}
{print "  <url>"}
{print "    <loc>http://documentation.vixo.com/"gensub(/\.rst/, ".html", "g", $9)"</loc>"}
{print "    <lastmod>"$6"</lastmod>"}
{print "  </url>"}

END {
    {print "</urlset>"}
}