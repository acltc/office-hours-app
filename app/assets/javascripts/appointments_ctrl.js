(function() {
  "use strict";

  angular.module("app").controller("appointmentsCtrl", function($scope, $http){

// $scope.setupAppointment = function(appointmentId) {
//   $scope.currentappointmentId = appointmentId;

$scope.setup = function(mentorId) {
  $scope.currentMentorId = mentorId;

  $http.get("/api/v1/appointments.json?mentor_id=" + $scope.currentMentorId).then(function (response) {
$scope.appointments = response.data;
$scope.currentAppointmentId = response.data.id;
console.log(response) 
    });

  $http.get("/api/v1/mentors.json?id=" + $scope.currentMentorId).then(function (response) {
      $scope.mentor = response.data;
      // console.log(response);
    });
};

    $scope.selectAppointment = function(appointment){
      console.log(appointment);
      alert("You will be scheduled for " + (appointment.duration) + " minutes with this mentor. Please enter your name and email in the appropriate section and submit your request.");
      $scope.greeting =  " You are now scheduled. You should expect to spend " + (appointment.duration) + " minutes with your mentor! "; 
      
    // $scope.available = !appointment.available;
      $scope.appointments = null;

      $scope.enterInfo = function(addName, addEmail){
        $scope.greetingTwo = "Thank you! ";
        $scope.addName = "";
        $scope.addEmail = "";
        console.log(addName, addEmail);
      var updatedAppointment = { mentee_name: (addName), mentee_email: (addEmail), available: false };
      $http.patch('/api/v1/appointments/' + (appointment.id) + '.json', {appointment: (updatedAppointment)}).then(function(response) {
          
        }, function (error) {
          $scope.error = error.statusText;
        });
      };
    };
      window.scope = $scope;
    });
}());