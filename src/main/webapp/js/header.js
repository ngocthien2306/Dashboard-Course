
        $(document).ready(function(){
            $(".sidebar-btn").click(function(){
                $(".wrapper").toggleClass("collapse");
            });
        });
        $(document).ready(function(){
            //toggle sub-menus
            $(".card-btn").click(function(){
                $(this).next(".card").slideToggle();
            });

            //toggle more-menus
            $(".more-btn").click(function(){
                $(this).next(".more-menu").slideToggle();
            });
        });