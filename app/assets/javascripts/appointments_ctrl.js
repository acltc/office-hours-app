(function() {
  "use strict";

  angular.module("app").controller("appointmentsCtrl", function($scope, $http){

$scope.setup = function(mentorId) {
  $scope.currentMentorId = mentorId;

  $http.get("/api/v1/appointments.json?mentor_id=" + $scope.currentMentorId).then(function (response) {
$scope.appointments = response.data;
$scope.currentAppointmentId = response.data.id; 
    });

  $http.get("/api/v1/mentors.json?id=" + $scope.currentMentorId).then(function (response) {
      $scope.mentor = response.data;
      console.log(response);
    });
};

    $scope.selectAppointment = function(appointment){
      console.log(appointment);
      alert("You will be scheduled for " + (appointment.duration) + " minutes with this mentor. Please enter your name and email in the appropriate section and submit your request.");
      $scope.greeting =  " You are now scheduled. You should expect to spend " + (appointment.duration) + " minutes with your mentor! "; 
      
    $scope.available = !appointment.available;
      $scope.appointments = null;

      $scope.enterInfo = function(addName, addEmail){
        console.log(addName, addEmail);
      };
      // var updatedAppointment = { mentee_name: appointment.mentee_name, mentee_email: appointment.mentee_email, Available: !appointment.available };
      // $http.patch('/api/v1/appointments/' + $scope.currentAppointmentId + '.json', {appointment: updatedAppointment}).then(function(response) {
      //     $scope.currentAppointment.mentee_name = appointment.mentee_name;
      //   }, function (error) {
      //     $scope.error = error.statusText;
    };
      window.scope = $scope;
    });
}());