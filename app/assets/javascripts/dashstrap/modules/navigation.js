var Nav = angular.module("Navigation", []);

window.dashboard_dependencies = window.dashboard_dependencies || [];
window.dashboard_dependencies.push("Navigation");

Nav.controller("NavigationController", ["$rootScope", function($rootScope){
    var that = this;

    $rootScope.show_sidebar = true;

    console.log("here");
    this.toggle_sidebar = function() {
        console.log("there");
        $rootScope.show_sidebar = !$rootScope.show_sidebar;
    };
}]);
