"use strict";!function(a){var i,t=!1;function e(t,e){var n=this,o=foswiki.getPreference("WEB")+"."+foswiki.getPreference("TOPIC");(i=n).elem=a(t),n.opts=a.extend({baseTopic:o,topic:o},n.elem.data(),e),n.init()}e.prototype.init=function(){var i=this,t=window.location.hash;i.container=i.elem.parent(),t.match(/^#comment\d+\.\d+$/)&&a.scrollTo(t.replace(/\./,"\\."),500,{easing:"easeInOutQuad"}),i.elem.find(".cmtReply").on("click",function(){var t=a(this).parent().find(".cmtComment:first"),e=a.extend({},t.data());return i.loadDialogs().then(function(){a("#cmtReplyComment").dialog("option","open",function(){var t=a(this);t.find("input[name='topic']").val(i.opts.topic),t.find(".cmtCommentIndex").text(e.index),t.find("input[name='ref']").val(e.commentId),t.find("form").trigger("refresh")}).dialog("open")}),!1}),i.elem.find(".cmtEdit").on("click",function(){var t=a(this).parents(".cmtComment:first"),n=a.extend({},t.data());return i.loadDialogs().then(function(){a.jsonRpc(foswiki.getPreference("SCRIPTURL")+"/jsonrpc",{namespace:"MetaCommentPlugin",method:"getComment",params:{topic:i.opts.topic,comment_id:n.commentId},success:function(e){a.unblockUI(),a("#cmtUpdateComment").dialog("option","open",function(){var t=a(this);t.find("input[name='topic']").val(i.opts.topic),t.find("input[name='comment_id']").val(n.commentId),t.find("input[name='index']").val(n.index),t.find(".cmtCommentIndex").text(n.index),t.find("input[name='title']").val(e.result.title),t.find("textarea[name='text']").val(e.result.text),t.find("form").trigger("refresh"),(""+n.index).match(/^\d+$/)?t.find(".cmtTitleStep").show():t.find(".cmtTitleStep").hide()}).dialog("open")},error:function(t){a.unblockUI(),a.pnotify({title:"Error",text:t.error.message,type:"error"})}})}),!1}),i.elem.find(".cmtDelete").on("click",function(){var t=a(this).parents(".cmtComment:first"),e=a.extend({},t.data());return i.loadDialogs().then(function(){a("#cmtConfirmDelete").dialog("option","open",function(){var t=a(this);t.find("input[name='topic']").val(i.opts.topic),t.find("input[name='comment_id']").val(e.commentId),t.find("input[name='index']").val(e.index),t.find(".cmtCommentNr").text(e.index),t.find(".cmtAuthor").text(e.author),t.find(".cmtDate").text(e.date)}).dialog("open")}),!1}),i.elem.find(".cmtDeleteAll, .cmtApproveAll, .cmtMarkAll").on("click",function(){var t=a(this).attr("href");return i.loadDialogs().then(function(){a(t).dialog("option","open",function(){a(this).find("input[name='topic']").val(i.opts.topic)}).dialog("open")}),!1}),i.elem.find(".cmtMark").on("click",function(){var t=a(this),e=t.data("message"),n=t.parents(".cmtComment:first"),o=a.extend({},n.data());return a.jsonRpc(foswiki.getPreference("SCRIPTURL")+"/jsonrpc",{namespace:"MetaCommentPlugin",method:"markComment",params:{topic:i.opts.topic,comment_id:o.commentId},beforeSubmit:function(){a.blockUI({message:"<h1>"+e+" ...</h1>"})},success:function(){a.unblockUI(),(t.parent().is(".cmtMarkContainer")?t.parent():t).remove(),n.parent().removeClass("cmtCommentNew cmtCommentUpdated"),i.updateFavicon()},error:function(t){a.unblockUI(),a.pnotify({title:"Error",text:t.error.message,type:"error"})}}),!1}),i.elem.find(".cmtApprove").on("click",function(){var t=a(this).parents(".cmtComment:first"),e=a.extend({},t.data());return i.loadDialogs().then(function(){a("#cmtConfirmApprove").dialog("option","open",function(){var t=a(this);t.find("input[name='topic']").val(i.opts.topic),t.find("input[name='comment_id']").val(e.commentId),t.find("input[name='index']").val(e.index),t.find(".cmtCommentNr").text(e.index),t.find(".cmtAuthor").text(e.author),t.find(".cmtDate").text(e.date)}).dialog("open")}),!1}),window.setTimeout(function(){i.elem.find(".twistyPlugin").show()},1),i.updateFavicon()},e.prototype.updateFavicon=function(){var t;foswiki.faviconManager&&(t=this.elem.find(".cmtMark").length,foswiki.faviconManager.setText(t||""))},e.prototype.loadDialogs=function(){var e=a.Deferred();return t?(a(".cmtDialog form").resetForm(),e.resolve()):(t=!0,a.get(foswiki.getScriptUrl("rest","RenderPlugin","template",{name:"metacomments",render:"on",topic:this.opts.baseTopic,expand:"comments::dialogs"}),function(t){a("body").append(t),window.setTimeout(function(){e.resolve()},100)})),e},e.prototype.reload=function(){var t=this,e=foswiki.getScriptUrl("rest","RenderPlugin","template",{name:"metacomments",render:"on",topic:t.opts.baseTopic,commentstopic:t.opts.topic,expand:"metacomments",cachecontrol:0});t.container.load(e,function(){a.unblockUI(),t.container.height("auto")})},a.fn.metaComments=function(t){return this.each(function(){a.data(this,"MetaComments")||a.data(this,"MetaComments",new e(this,t))})},a(function(){a(".cmtComments").livequery(function(){a(this).metaComments()})}),a(".cmtJsonRpcForm").livequery(function(){var t=a(this),e=t.data("message");t.on("refresh",function(){t.find(".natedit").each(function(){var t=a(this).data("natedit"),e=a(this).val();t&&t.setValue(e)})}),t.ajaxForm({beforeSerialize:function(){"undefined"!=typeof foswikiStrikeOne&&foswikiStrikeOne(t[0]),t.find(".natedit").each(function(){var t=a(this).data("natedit");t&&t.beforeSubmit()})},beforeSubmit:function(){t.is(".cmtModalForm")&&t.parent().dialog("close"),a.blockUI({message:"<h1>"+e+" ...</h1>",fadeIn:0,fadeOut:0})},success:function(t){t.error?(a.unblockUI(),a.pnotify({title:"Error",text:t.error.message,type:"error"})):i&&i.reload()},error:function(t){t=a.parseJSON(t.responseText);a.unblockUI(),a.pnotify({title:"Error",text:t.error.message,type:"error"})}})})}(jQuery);
