<!DOCTYPE html>
<html>
 <head>
  <title>AngularJS | Add Remove Input Fields Dynamically in PHP</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
 </head>
 <body>
  <br />
   <h3 align="center">Add Remove Input Fields Dynamically in PHP</h3>
  <br />
  <div ng-app="dynamicApp" ng-controller="dynamicController" class="container" style="width:600px;" ng-init="fetchData()">
   
   <div class="alert alert-success alert-dismissible" ng-show="success" >
    <a href="#" class="close" aria-label="close">&times;</a>
    {{successMessage}}
   </div>

   <div class="alert alert-danger alert-dismissible" ng-show="error" >
    <a href="#" class="close" aria-label="close">&times;</a>
    {{errorMessage}}
   </div>

   <form method="post" ng-submit="submitForm()">
    <div class="form-group">
     <label>Enter Your Name</label>
     <input type="text" name="name" id="name" ng-model="formData.person_name" class="form-control" />
    </div>
    <fieldset ng-repeat="row in rows">
     <div class="form-group">
      <label>Enter Your Programming Skill</label>
      <div class="row">
       <div class="col-md-9">
        <input type="text" name="programming_languages[]" class="form-control" ng-model="formData.skill[$index + 1]" />
       </div>
       <div class="col-md-3">
        <button type="button" name="remove" ng-model="row.remove" class="btn btn-danger btn-sm" ng-click="removeRow()"><span class="glyphicon glyphicon-minus"></span></button>
       </div>
      </div>
     </div>
    </fieldset>
    <div class="form-group">
     <button type="button" name="add_more" class="btn btn-success" ng-click="addRow()"><span class="glyphicon glyphicon-plus"></span> Add</button>
     <input type="submit" name="submit" class="btn btn-info" value="Save" />
    </div>
   </form>

   <div class="table-responsive">
    <table class="table table-bordered table-striped">
     <tr>
      <th>Name</th>
      <th>Programming Languages</th>
     </tr>
     <tr ng-repeat="name in namesData">
      <td>{{name.name}}</td>
      <td>{{name.programming_languages}}</td>
     </tr>
    </table>
   </div>
  </div>
 </body>
</html>

<script>

var app = angular.module('dynamicApp', []);

app.controller('dynamicController', function($scope, $http){

 $scope.success = false;
 $scope.error = false;

 $scope.fetchData = function(){
  $http.get('fetch_data.php').success(function(data){
   $scope.namesData = data;
  });
 };

 $scope.rows = [{name: 'programming_languages[]', name: 'remove'}];

 $scope.addRow = function(){
  var id = $scope.rows.length + 1;
  $scope.rows.push({'id':'dynamic'+id});
 };

 $scope.removeRow = function(row){
  var index = $scope.rows.indexOf(row);
  $scope.rows.splice(index, 1);
 };

 $scope.formData = {};

 $scope.submitForm = function(){
  $http({
   method:"POST",
   url:"insert.php",
   data:$scope.formData
  }).success(function(data){
   if(data.error != '')
   {
    $scope.success = false;
    $scope.error = true;
    $scope.errorMessage = data.error;
   }
   else
   {
    $scope.success = true;
    $scope.error = false;
    $scope.successMessage = data.message;
    $scope.formData = {};
    $scope.rows = [{name: 'programming_languages[]', name: 'remove'}];
    $scope.fetchData();
   }
  });
 };

});

</script>
