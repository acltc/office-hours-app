(function() {
  "use strict";

  angular.module("app").controller("appointmentsCtrl", function($scope, $http){

    $scope.setMentor = function(id) {
      $scope.mentorId = id;
    };

    $http.get("/api/v1/appointments.json").then(function (response) {
      $scope.appointments = response.data;
    });

    $scope.createAppointment = function(newDateStartTime, newDuration) {
      var newAppointment = {
        date_start_time: newDateStartTime, 
        duration: newDuration,
        mentor_id: $scope.mentorId
      };
      $http.post("/api/v1/appointments.json", {appointment: newAppointment}).then(function (response) {

        }, function (error) {
          $scope.error = error.statusText;
        });

      $scope.appointments.push(newAppointment);
      $scope.newDateStartTime = "";
      $scope.newDuration = "";
    };

    
  });
}());