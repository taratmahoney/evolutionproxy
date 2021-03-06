/*!
 * froala_editor v2.0.0-rc.3 (https://www.froala.com/wysiwyg-editor/v2.0)
 * License http://editor.froala.com/license
 * Copyright 2014-2015 Froala Labs
 */

!function(a){"use strict";a.extend(a.FroalaEditor.DEFAULTS,{charCounterMax:-1,charCounterCount:!0}),a.FroalaEditor.PLUGINS.charCounter=function(b){function c(){return b.$el.text().length}function d(a){if(b.opts.charCounterMax<0)return!0;if(c()<b.opts.charCounterMax)return!0;var d=a.which;return!b.keys.ctrlKey(a)&&b.keys.isCharacter(d)?(a.preventDefault(),a.stopPropagation(),b.events.trigger("charCounter.exceeded"),!1):!0}function e(d){if(b.opts.charCounterMax<0)return d;var e=a("<div>").html(d).text().length;return e+c()<=b.opts.charCounterMax?d:(b.events.trigger("charCounter.exceeded"),"")}function f(){if(b.opts.charCounterCount){var a=c()+(b.opts.charCounterMax>0?"/"+b.opts.charCounterMax:"");h.text(a),b.opts.toolbarBottom&&h.css("margin-bottom",b.$tb.outerHeight(!0))}}function g(){return b.$wp?(h=a('<span class="fr-counter"></span>'),b.$box.append(h),b.events.on("keydown",d,!0),b.events.on("paste.afterCleanup",e),b.events.on("keyup",f),b.events.on("contentChanged",f),b.events.on("charCounter.update",f),f(),void b.events.on("destroy",function(){a(b.original_window).off("resize.char"+b.id),h.removeData().remove()})):!1}var h;return{_init:g}}}(jQuery);
