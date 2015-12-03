var EightyApp = function() {
    this.processDocument = function(html, url, headers, status, jQuery) {
        var app = this;
        var $ = jQuery;
        var $html = app.parseHtml(html, $);
        var object = {};

        object.title = $html.filter('title').text();

        var iframes = [];
        $html.find('iframe').each(function(i, elem) {
            iframes.push({
                src: $(elem).attr('src')
            });
        });

        object.iframes = iframes;

        object.iframesCount = $html.find('iframe').length;

        return JSON.stringify(object);
    };

    this.parseLinks = function(html, url, headers, status, jQuery) {
        var app = this;
        var $ = jQuery;
        var $html = app.parseHtml(html, $);
        var links = [];

        var r = /:\/\/(.[^/]+)/;
        var urlDomain = url.match(r)[1];

        // gets all links in the html document
        $html.find('a').each(function(i, obj) {
            var link = app.makeLink(url, $(this).attr('href'));

            if (link !== null) {
                try {
                    var linkDomain = link.match(r)[1];
                    if (urlDomain == linkDomain) {
                        links.push(link);
                    }
                } catch (err) {

                }
            }
        });

        return links;
    };
};

try {
    // Testing
    module.exports = function(EightyAppBase) {
        EightyApp.prototype = new EightyAppBase();
        return new EightyApp();
    };
} catch (e) {
    // Production
    console.log("Eighty app exists.");
    EightyApp.prototype = new EightyAppBase();
}