"use strict";jQuery(function(i){i("input.jqTextboxList:not(.jqInitedTextboxList)").livequery(function(){var t=i(this),e=i.extend({autocomplete:t.attr("autocomplete")},t.data(),t.metadata());t.addClass("jqInitedTextboxList").textboxlist(e)})});
