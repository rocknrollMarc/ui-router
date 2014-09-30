angular.module("myApp", [
  "ngAnimate"
  "ui.router"
  "templates"
]).config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  
  ###
  Routes and States
  ###
  $stateProvider.state "home",
    url: "/"
    templateUrl: "home.html"
    controller: "HomeCtrl"

    .state "dashboard",
      abstract: true
      templateUrl: 'dashboard/layout.html'

    .state "dashboard.one",
      url: '/'
      templateUrl: 'dashboard/one.html'

    .state "dasboard.two",
      url: '/two'
      templateUrl: 'dashboard/two.html'

    .state "dashboard.three",
      url: '/three'
      templateUrl: 'dashboard/three.html'

  
  # default fall back route
  $urlRouterProvider.otherwise "/"
  
  # enable HTML5 Mode for SEO
  $locationProvider.html5Mode true


