var Nav = angular.module("Navigation", []);

window.dashboard_dependencies = window.dashboard_dependencies || [];
window.dashboard_dependencies.push("Navigation");

Nav.controller("NavigationController", ["$rootScope", function($rootScope){
    var that = this;

    $rootScope.show_sidebar = true;

    this.toggle_sidebar = function() {

        if ($(window).width() <= 992) {
            $('.row-offcanvas').toggleClass('active');
            $('.left-side').removeClass("collapse-left");
            $(".right-side").removeClass("strech");
            $('.row-offcanvas').toggleClass("relative");
        } else {
            //Else, enable content streching
            $('.left-side').toggleClass("collapse-left");
            $(".right-side").toggleClass("strech");
        }
        $rootScope.show_sidebar = !$rootScope.show_sidebar;
    };
}]);
