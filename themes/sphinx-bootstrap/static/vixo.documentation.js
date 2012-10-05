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
        // Set a cookie with a 1 day expire - this means that if someone
        // switches from being anonymous to a signed in user it will be picked
        // up quickly
	      var date, expires;
        
        date = new Date();
	      date.setTime(date.getTime() + (24 * 60 * 60 * 1000));
	      expires = "; expires=" + date.toGMTString();
        document.cookie = "auth=" + data.auth + expires + "; path=/";
    };

    // Basically we set an auth cookie for an 
    if (!getAuthCookie()) {
        $.ajax({url: "http://hypernumbers.dev:9000/_sync/documentation/",
                success: successFn,
                dataType: "jsonp"
               });
    };
};

Vixo.init();