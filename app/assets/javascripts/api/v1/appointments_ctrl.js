(function() {
  "use strict";

  angular.module("app").controller("appointmentsCtrl", function($scope, $http){

    $http.get("/api/v1/appointments.json").then(function (response) {
      $scope.appointments = response.data; 
    });

    $http.get("/api/v1/mentors.json").then(function (response) {
      $scope.mentors = response.data;
    });

    $scope.selectAppointment = function(appointment){
      $scope.greeting = " Your appointment! , " + (appointment.date_start_time) + " You should expect to spend " + (appointment.duration) + " minutes with your mentor!";
      // appointment.available = !appointment.available;
      // $scope.appointments = null;
    };
      window.scope = $scope;
    });
}());