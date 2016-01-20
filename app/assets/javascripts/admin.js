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
    $('.text').froalaEditor({
        minHeight: 200,
        toolbarButtons: ['fullscreen', 'bold', 'italic', 'underline', 'strikeThrough', 'subscript', 'superscript', 'fontFamily', 'fontSize', '|', 'color', 'emoticons', 'inlineStyle', 'paragraphStyle', '|', 'paragraphFormat', 'align', 'formatOL', 'formatUL', 'outdent', 'indent', '-', 'insertLink', 'insertImage', 'insertVideo', 'insertFile', 'insertTable', '|', 'quote', 'insertHR', 'undo', 'redo', 'clearFormatting', 'selectAll', 'html'],
        plainPaste: true,
        imageUploadURL: '<%= refinery.admin_upload_image_path %>',
        imageUploadParams: {
            authenticity_token: '<%= form_authenticity_token %>',
            return_to: window.location.href,
            site: '<%= current_site.id %>'
        },
        imageErrorCallback: function (error) {
            console.log('ERROR: %O', error);

            var scroll_pos=(0);
            var message = error.message + ' (Code: ' + error.code + ')';
            var flash =  '<div id="flash_container"><div id="flash" class="flash flash_error" style="visibility: visible; opacity: 1;">'+ message +'</div></div>';

            $('#content').prepend(flash);
            $('html, body').animate({scrollTop:(scroll_pos)}, '2000');
            setTimeout(function(){
                $('#flash_container').fadeOut('slow');
                $('#flash_container').remove();
            }, 2000);
        }

    })
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


!function ($) {
    $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
        $(this).find('em:first').toggleClass("glyphicon-minus");
    });
    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
}(window.jQuery);

$(window).on('resize', function () {
    if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
})
$(window).on('resize', function () {
    if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
})
