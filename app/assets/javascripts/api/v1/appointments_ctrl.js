(function() {
  "use strict";

  angular.module("app").controller("appointmentsCtrl", function($scope, $http){

    $http.get("/api/v1/appointments.json").then(function (response) {
      $scope.appointments = response.data;
    });

    $scope.createAppointment = function(newDateStartTime, newDuration) {
      var newAppointment = {
        date_start_time: newDateStartTime, 
        duration: newDuration
      };
      $http.post("/api/v1/appointments.json", {appointment: newAppointment}).then(function (response) {

        }, function (error) {
          $scope.error = error.statusText;
        });

      $scope.appointments.push(newAppointment);
      $scope.newDateStartTime = "";
      $scope.newDuration = "";
    };

    $scope.selectAppointment = function(appointment){
      $scope.greeting = "Your drone, " + (appointment.date_start_time) + " will be on their way! You should expect your Ice cream within 30 minutes!";
      appointment.available = !appointment.available;
      $scope.appointments = null;
    };
      window.scope = $scope;
    });

}());