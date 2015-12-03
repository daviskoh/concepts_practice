var EightyApp = function() {
    this.processDocument = function(html, url, headers, status, jQuery) {
            var app = this;
            var $ = jQuery;
            var $html = app.parseHtml(html, $);
            var object = {};

            object.title = $html.filter('title').text();

            var images = [];
            $html.find('.team_pic').each(function (i, elem) {
                images.push({
                  url: $(elem).find('img80').attr('src')
                });
            });
            object.images = images;

            object.imagesCount = $html.find('img').length;

            return JSON.stringify(object);
    };
}

try {
    // Testing
    module.exports = function(EightyAppBase) {
            EightyApp.prototype = new EightyAppBase();
            return new EightyApp();
    }
} catch(e) {
    // Production
    console.log("Eighty app exists.");
    EightyApp.prototype = new EightyAppBase();
}
