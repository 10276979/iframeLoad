; (function () {
    var ifrLoad = function (obj, html, call) {
        var that = this;
        that.id = obj.id;
        that.tarName = obj.tarName;
        that.loadId = obj.loadId;
        that.clickElement = obj.clickElement;


        that.returnId(that.id).parent().append(html);
        that.iframeInit();

        for (var i = 0; i < that.clickElement.length; i++) {
            $(that.clickElement[i] + "[target='" + that.tarName + "']").click(function () {
                that.iframeInit();
            });
        }
    }

    ifrLoad.prototype = {
        iframeInit: function () {
            var that = this;
            that.returnId(that.id).unbind("load");
            that.returnId(that.loadId).show();
            that.returnId(that.id).bind("load", function () {
                that.returnId(that.loadId).hide();
            });
        },
        returnId: function (id) {
            return typeof id == 'string' ? $(document.getElementById(id)) : id;
        }
    }

    window.iframeLoad = ifrLoad;
})();