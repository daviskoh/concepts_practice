function html (templates, ...strings) {
    // replace unsafe chars w/ safe ones
    function sanitize (string) {
        return string.replace(/\&/g, '&amp;')
                     .replace(/\'/g, '&apos;')
                     .replace(/\"/g, '&quot;')
                     .replace(/\</g, '&lt;')
                     .replace(/\>/g, '&gt;');
    }

    return templates.map((template, i) => template + sanitize(strings[i] || ''))
                    .reduce((sum, string) => sum + string);
}

console.log(html`<b>${process.argv[2]} says</b>: "${process.argv[3]}"`);

