<!--[if (gt IE 9)|!(IE)]><!-->

<script>
    <!-- This must be AFTER Alfresco CSS, maybe it should be placed in another region -->
    var linkElement = document.createElement("link");
    linkElement.type = "text/css";
    linkElement.rel = "stylesheet";
    linkElement.media = "screen";
    linkElement.href = "${url.context}/scripts/converse.js/css/converse.css";
    document.getElementsByTagName('head')[0].appendChild(linkElement);
</script>

<div id="conversejs"></div>

<script>
if (localStorage.getItem("sid") != null && localStorage.getItem("sid") != "null") {

    var sid = localStorage.getItem("sid");
    var rid = localStorage.getItem("rid");
    var jid = localStorage.getItem("jid");
    
    converse.initialize({
        bosh_service_url: '${msg('chatFooterModule.chatUrl')}',
        i18n: locales.${msg('chatFooterModule.locale')},
		prebind: true,
		sid: sid,
		jid: jid,
		rid: rid,
		auto_list_rooms: true,
		show_controlbox_by_default: false,
		xhr_user_search: false,
		expose_rid_and_sid: true
    }, function() {
        var that = this;
        $(window).unload(function(event) {
            if (typeof that.connection !== "undefined") {
                localStorage.setItem("sid", converse.getSID());
                localStorage.setItem("rid", converse.getRID());
                localStorage.setItem("jid", that.connection.jid || that.connection._proto.jid);
            } else {
                localStorage.removeItem("sid");
            }
         }); 
    });

} else {

    converse.initialize({
        bosh_service_url: '${msg('chatFooterModule.chatUrl')}',
        i18n: locales.${msg('chatFooterModule.locale')},
        prebind: false,
		auto_list_rooms: false,
		auto_subscribe: false,
		hide_muc_server: false,
		show_controlbox_by_default: false,
		xhr_user_search: false,
		expose_rid_and_sid: true
    }, function() {
        var that = this;
        $(window).unload(function(event) {
            if (typeof that.connection !== "undefined") {
                localStorage.setItem("sid", converse.getSID());
                localStorage.setItem("rid", converse.getRID());
                localStorage.setItem("jid", that.connection.jid || that.connection._proto.jid);
            } else {
                localStorage.removeItem("sid");
            }
        }); 
    });

}
</script>

<!--<![endif]-->