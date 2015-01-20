(function() {
  "use strict";

  angular.module("app").controller("appointmentsCtrl", function($scope, $http){

    $http.get("/api/v1/appointments.json?mentor_id=" + $scope.currentMentorId).then(function (response) {
      $scope.appointments = response.data; 
    });

    $http.get("/api/v1/mentors.json").then(function (response) {
      $scope.mentors = response.data;
    });

    $scope.selectAppointment = function(appointment){
      $scope.greeting =  " You are now scheduled. You should expect to spend " + (appointment.duration) + " minutes with your mentor!";
      // var updatedAppointment = { mentee_name: appointment.mentee_name, mentee_email: appointment.mentee_email };
      // $http.patch('/api/v1/appointments/' + $scope.currentAppointmentId + '.json', {appointment: updatedAppointment}).then(function(response) {
      //     $scope.currentAppointment.mentee_name = appointment.mentee_name;
      //   }, function (error) {
      //     $scope.error = error.statusText;
      appointment.available = !appointment.available;
      $scope.appointments = null;
    };
      window.scope = $scope;
    });
}());