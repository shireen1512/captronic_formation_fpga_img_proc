"use strict";!function(e){e.wikiword={downgradeMap:{},build:function(i){var n;return"string"==typeof i&&(i={source:i}),n=e.extend({},e.wikiword.defaults,i),this.each((function(){var i,r=e(this),t=e.extend({},n,r.data(),r.metadata());"string"==typeof t.source?0===(i=r.parents("form:first").find(t.source)).length&&(i=e(t.source)):i=t.source,i.on("change",(function(){e.wikiword.handleChange(i,r,t)})).on("keyup",(function(){e.wikiword.handleChange(i,r,t)})).trigger("change")}))},handleChange:function(i,n,r){var t=[];i.each((function(){var i,n=e(this);n.is(":radio")||n.is(":checkbox")?n.is(":checked")&&(i=n.val()):i=n.is(":input")?n.val():n.text(),i&&t.push(i)})),t=(t=t.join(" "))||!r.initial?e.wikiword.wikify(t,r):r.initial,n.each((function(){e(this).is(":input")?e(this).val(t):e(this).text(t)})).trigger("change")},wikify:function(i,n){var r,t,a="";if("string"==typeof(n=e.extend({},e.wikiword.defaults,n)).allowedRegex&&(n.allowedRegex=new RegExp(n.allowedRegex,"g")),"string"==typeof n.forbiddenRegex&&(n.forbiddenRegex=new RegExp(n.forbiddenRegex,"g")),n.transliterate)for(t=0;t<i.length;t++)r=i[t],a+=e.wikiword.downgradeMap[r]||r;else a=i;return a=(a=a.replace(n.allowedRegex,(function(e){return e.charAt(0).toLocaleUpperCase()+e.substr(1)}))).replace(n.forbiddenRegex,n.separator),n.suffix&&-1===a.indexOf(n.suffix,a.length-n.suffix.length)&&(a+=n.suffix),n.prefix&&0!==a.indexOf(n.prefix)&&(a=n.prefix+a),a},defaults:{suffix:"",prefix:"",initial:"",separator:"",transliterate:!1,allowedRegex:"["+foswiki.RE.alnum+"]+",forbiddenRegex:"[^"+foswiki.RE.alnum+"]+"}},e.fn.wikiword=e.wikiword.build,e((function(){e(".jqWikiWord:not(.jqInitedWikiWord)").livequery((function(){e(this).addClass("jqInitedWikiWord").wikiword()}))}))}(jQuery),jQuery.wikiword.downgradeMap={"À":"A","Á":"A","Â":"A","Ã":"A","Ä":"Ae","Å":"A","Æ":"AE","Ç":"C","È":"E","É":"E","Ê":"E","Ë":"E","Ì":"I","Í":"I","Î":"I","Ï":"I","Ð":"D","Ñ":"N","Ò":"O","Ó":"O","Ô":"O","Õ":"O","Ö":"Oe","Ő":"O","Ø":"O","Ù":"U","Ú":"U","Û":"U","Ü":"Ue","Ű":"U","Ý":"Y","Þ":"TH","ß":"ss","à":"a","á":"a","â":"a","ã":"a","ä":"ae","å":"a","æ":"ae","ç":"c","è":"e","é":"e","ê":"e","ë":"e","ì":"i","í":"i","î":"i","ï":"i","ð":"d","ñ":"n","ò":"o","ó":"o","ô":"o","õ":"o","ö":"oe","ő":"o","ø":"o","ù":"u","ú":"u","û":"u","ü":"ue","ű":"u","ý":"y","þ":"th","ÿ":"y","α":"a","β":"b","γ":"g","δ":"d","ε":"e","ζ":"z","η":"h","θ":"8","ι":"i","κ":"k","λ":"l","μ":"m","ν":"n","ξ":"3","ο":"o","π":"p","ρ":"r","σ":"s","τ":"t","υ":"y","φ":"f","χ":"x","ψ":"ps","ω":"w","ά":"a","έ":"e","ί":"i","ό":"o","ύ":"y","ή":"h","ώ":"w","ς":"s","ϊ":"i","ΰ":"y","ϋ":"y","ΐ":"i","Α":"A","Β":"B","Γ":"G","Δ":"D","Ε":"E","Ζ":"Z","Η":"H","Θ":"8","Ι":"I","Κ":"K","Λ":"L","Μ":"M","Ν":"N","Ξ":"3","Ο":"O","Π":"P","Ρ":"R","Σ":"S","Τ":"T","Υ":"Y","Φ":"F","Χ":"X","Ψ":"PS","Ω":"W","Ά":"A","Έ":"E","Ί":"I","Ό":"O","Ύ":"Y","Ή":"H","Ώ":"W","Ϊ":"I","Ϋ":"Y","ş":"s","Ş":"S","ı":"i","İ":"I","ğ":"g","Ğ":"G","а":"a","б":"b","в":"v","г":"g","д":"d","е":"e","ё":"yo","ж":"zh","з":"z","и":"i","й":"j","к":"k","л":"l","м":"m","н":"n","о":"o","п":"p","р":"r","с":"s","т":"t","у":"u","ф":"f","х":"h","ц":"c","ч":"ch","ш":"sh","щ":"sh","ъ":"","ы":"y","ь":"","э":"e","ю":"yu","я":"ya","А":"A","Б":"B","В":"V","Г":"G","Д":"D","Е":"E","Ё":"Yo","Ж":"Zh","З":"Z","И":"I","Й":"J","К":"K","Л":"L","М":"M","Н":"N","О":"O","П":"P","Р":"R","С":"S","Т":"T","У":"U","Ф":"F","Х":"H","Ц":"C","Ч":"Ch","Ш":"Sh","Щ":"Sh","Ъ":"","Ы":"Y","Ь":"","Э":"E","Ю":"Yu","Я":"Ya","Є":"Ye","І":"I","Ї":"Yi","Ґ":"G","є":"ye","і":"i","ї":"yi","ґ":"g","č":"c","ď":"d","ě":"e","ň":"n","ř":"r","š":"s","ť":"t","ů":"u","ž":"z","Č":"C","Ď":"D","Ě":"E","Ň":"N","Ř":"R","Š":"S","Ť":"T","Ů":"U","Ž":"Z","ą":"a","ć":"c","ę":"e","ł":"l","ń":"n","ś":"s","ź":"z","ż":"z","Ą":"A","Ć":"C","Ę":"e","Ł":"L","Ń":"N","Ś":"S","Ź":"Z","Ż":"Z","ā":"a","ē":"e","ģ":"g","ī":"i","ķ":"k","ļ":"l","ņ":"n","ū":"u","Ā":"A","Ē":"E","Ģ":"G","Ī":"i","Ķ":"k","Ļ":"L","Ņ":"N","Ū":"u","©":"(c)","®":"(r)"};