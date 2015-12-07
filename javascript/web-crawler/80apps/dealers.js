var EightyApp = function() {
    var regex = /(value|bbo|trade|vyt|black|book)/i;

    this.processDocument = function(html, url, headers, status, jQuery) {
        if (!url.match(regex)) return;

        var app = this;
        var $ = jQuery;
        var $html = app.parseHtml(html, $);
        var object = {
          title: $html.filter('title').text(),
          iframes: [],
          urls: []
        };

        $html.find('iframe').each(function(i, elem) {
            object.iframes.push({
                src: $(elem).attr('src')
            });
        });

        object.iframesCount = $html.find('iframe').length;

        return JSON.stringify(object);
    };

    var visitedLinks = [];

    this.parseLinks = function(html, url, headers, status, jQuery) {
        var regex = /(value|bbo|trade|vyt|black|book)/i;
        if (!url.match(regex)) return;

        var app = this;
        var $ = jQuery;
        var $html = app.parseHtml(html, $);
        var links = [];

        var r = /:\/\/(.[^/]+)/;
        var urlDomain = url.match(r)[1];

        // gets all links in the html document
        $html.find('a').each(function(i, obj) {
            var link = app.makeLink(url, $(this).attr('href'));

            if (visitedLinks.indexOf(link) !== -1) return;

            if (link !== null) {
                try {
                    var linkDomain = link.match(r)[1];
                    if (urlDomain === linkDomain) {
                        links.push(link);
                        visitedLinks.push(link);
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
