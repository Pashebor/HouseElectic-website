function executeChanging() {
    var images = [{
            url: "houses/house1.png", // Картинка
            timeout: 1000 // Задержка для картинки
        }, {
            url: "houses/house2.png",
            timeout: 1000
        },{
            url: "houses/house3.png",
            timeout: 1000
        },{
            url: "houses/house4.png",
            timeout: 1000
        }],
        i = 0,
        timeout;


    function changeBackground() {
        clearTimeout(timeout);

        $('#image').attr('src', function() {
            if (i >= images.length)
                i = 0;

            timeout = setTimeout(changeBackground, images[i].timeout);

            return images[i++].url ;
        });

    }
    changeBackground();
};

function executeOutOfPackageChanging() {
    var images = [{
            url: "../houses/house1.png", // Картинка
            timeout: 1000 // Задержка для картинки
        }, {
            url: "../houses/house2.png",
            timeout: 1000
        },{
            url: "../houses/house3.png",
            timeout: 1000
        },{
            url: "../houses/house4.png",
            timeout: 1000
        }],
        i = 0,
        timeout;


    function changeBackground() {
        clearTimeout(timeout);

        $('#image').attr('src', function() {
            if (i >= images.length)
                i = 0;

            timeout = setTimeout(changeBackground, images[i].timeout);

            return images[i++].url ;
        });

    }
    changeBackground();
};