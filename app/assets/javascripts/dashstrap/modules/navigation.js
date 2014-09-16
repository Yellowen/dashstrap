var Nav = angular.module("Navigation", []);

window.dashboard_dependencies = window.dashboard_dependencies || [];
window.dashboard_dependencies.push("Navigation");

Nav.controller("NavController", [function(){
    var that = this;

    this.show_sidebar = true;

    this.toggle_sidebar = function() {
        return !that.show_sidebar;
    };
}]);
