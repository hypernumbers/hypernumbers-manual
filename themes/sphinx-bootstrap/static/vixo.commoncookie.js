Vixo = {};

Vixo.init = function () {
    var getAuthCookieFn, successFn, name, ca, i, c;

    getAuthCookieFn = function () {
        name = "auth=";
        ca = document.cookie.split(';');
        for (i = 0; i < ca.length; i = i + 1) {
            c = ca[i];
            while (c.charAt(0) === ' ') {
                c = c.substring(1, c.length);
            }
            if (c.indexOf(name) === 0) {
                return true;
            }
        }
        return false;
    };

    successFn = function (data) {
	      var date;
        
        date = new Date();
        document.cookie = "auth=" + data.auth + "; path=/";
    };

    // Basically we set an auth cookie for an 
    if (!getAuthCookieFn()) {
        $.ajax({url: "http://hypernumbers.com/_sync/externalcookie/",
                success: successFn,
                dataType: "jsonp"
               });
    };
};

Vixo.init();