/**
 * Created by christoandrew on 11/16/2015.
 */
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require jquery.turbolinks
//= require bootstrap-table
//= require bootstrap-datepicker
//= require froala_editor.min.js
//= require plugins/align.min.js
//= require plugins/char_counter.min.js
//= require plugins/code_beautifier.min.js
//= require plugins/code_view.min.js
//= require plugins/colors.min.js
//= require plugins/emoticons.min.js
//= require plugins/entities.min.js
//= require plugins/file.min.js
//= require plugins/font_family.min.js
//= require plugins/font_size.min.js
//= require plugins/fullscreen.min.js
//= require plugins/image.min.js
//= require plugins/image_manager.min.js
//= require plugins/inline_style.min.js
//= require plugins/line_breaker.min.js
//= require plugins/link.min.js
//= require plugins/lists.min.js
//= require plugins/paragraph_format.min.js
//= require plugins/paragraph_style.min.js
//= require plugins/quote.min.js
//= require plugins/save.min.js
//= require plugins/table.min.js
//= require plugins/url.min.js
//= require plugins/video.min.js

$('#calendar').datepicker({});

$(document).ready(function () {
    $('[data-toggle=offcanvas]').click(function () {
        $('.row-offcanvas').toggleClass('active');
    });
    $('.text').froalaEditor({
        inlineMode: false,
        minHeight: 200,
        //toolbarButtons: ['fullscreen', 'bold', 'italic', 'underline', 'strikeThrough', 'subscript', 'superscript', 'fontFamily', 'fontSize', '|', 'color', 'emoticons', 'inlineStyle', 'paragraphStyle',,'image', '|', 'paragraphFormat', 'align', 'formatOL', 'formatUL', 'outdent', 'indent', '-', 'insertLink', '|', 'quote', 'insertHR', 'undo', 'redo', 'clearFormatting', 'selectAll', 'html'],
        plainPaste: true,
        /*imageUploadURL: "https://api.cloudinary.com/v1_1/" + cloud_name + "/auto/upload",
         imageUploadParams: {
         upload_preset: unsigned_preset,
         api_key: api_key
         }*/
        imageUploadToS3: {
            bucket: 'todidea',
            // Your bucket region.
            region: 's3-eu-west-1',
            keyStart: 'uploads/',
            callback: function (url, key) {
                // The URL and Key returned from Amazon.
                console.log (url);
                console.log (key);
            },
            params: {
                acl: 'public-read', // ACL according to Amazon Documentation.
                AWSAccessKeyId: '<%= @hash[:access_key] %>', // Access Key from Amazon.
                policy: '<%= @hash[:policy] %>', // Policy string computed in the backend.
                signature: '<%= @hash[:signature] %>' // Signature computed in the backend.
            }
        }

    });
});
function rowStyle(row, index) {
    var classes = ['active', 'success', 'info', 'warning', 'danger'];

    if (index % 2 === 0 && index / 2 < classes.length) {
        return {
            classes: classes[index / 2]
        };
    }
    return {};
}

