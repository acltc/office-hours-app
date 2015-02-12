(function() {
  "use strict";

  angular.module("app").controller("appointmentsCtrl", function($scope, $http){

    $scope.setup = function(mentorId) {
      $scope.currentMentorId = mentorId;

      $http.get("/api/v1/appointments.json?mentor_id=" + $scope.currentMentorId).then(function (response) {
        $scope.appointments = response.data;
        $scope.currentAppointmentId = response.data.id;
        if($scope.appointments.length < 1) alert("No appointments are available for this mentor at this time. Please check back often.");
        console.log(response) 
        console.log($scope.appointments.length)
      });

      $http.get("/api/v1/mentors.json?id=" + $scope.currentMentorId).then(function (response) {
        $scope.mentor = response.data;
        // console.log(response);
      });
    };

    $scope.createAppointment = function(newEventDate, newEventTime, newAppointmentDuration, newBreakDuration, newNumberOfSlots) {
      var newDateStartTime = newEventDate + " " + newEventTime;
      var newAppointmentDuration = newAppointmentDuration.slice(0,2)
      var newAppointment = {
        date_start_time: newDateStartTime, 
        duration: newAppointmentDuration,
        mentor_id: $scope.currentMentorId
      };
      $http.post("/api/v1/appointments.json", {appointment: newAppointment}).then(function (response) {

        $scope.appointments.push(newAppointment);
        $scope.newEventDate = "";
        $scope.newEventTime = "";
        $scope.newAppointmentDuration = "";
        $scope.newBreakDuration = "";

      }, function (error) {
        $scope.error = error.statusText;
      });

    };

    $scope.selectAppointment = function(appointment){
      console.log(appointment);
      
      // alert("You will be scheduled for " + (appointment.duration) + " minutes with this mentor. Please enter your first and last name and your email address in the appropriate section and submit your request.");
      $scope.greeting =  "You will be scheduled for " + (appointment.duration) + " minutes with this mentor. Please enter your first and last name and your email address in the section below and submit your request."; 
      $scope.appointments = null;

      $scope.enterInfo = function(addName, addEmail){
        $scope.addName = "";
        $scope.addEmail = "";
        console.log(addName, addEmail);
        var updatedAppointment = { mentee_name: (addName), mentee_email: (addEmail), available: false };
        $http.patch('/api/v1/appointments/' + (appointment.id) + '.json', {appointment: (updatedAppointment)}).then(function(response) {
          alert("Thank you " + (updatedAppointment.mentee_name) + "! You're appointment is scheduled. If you need to cancel please contact 1871");   
        // $scope.greetingScheduled = "Thank you! You're appointment is scheduled. If you need to cancel please contact 1871";
        window.location.href= "/";
      }, function (error) {
        $scope.error = error.statusText;
      });
      };
    };

    window.scope = $scope;
  });

}());