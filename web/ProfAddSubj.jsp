<link type="text/css" rel="stylesheet" href="res_lib/css/bootstrap.min.css">
<link  type="text/javascript"  rel="stylesheet" href="res_lib/jquery-2.2.3.min.js">
<link type="text/javascript"  rel="stylesheet" href="res_lib/js/bootstrap.min.js">
<link   type="text/css"  rel="stylesheet" href="css/forFormInput.css">
<link type="text/javascript"   rel="stylesheet"  href="js/forFormInput.js"> 


 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  
  <link   type="text/css"  rel="stylesheet" href="css/forFormInput.css">
  <script src="js/forFormInput.js"></script>
  
  <div class="container">
    <div class="page-header">
        <h1>    </h1>
    </div>
    <div class="row">
    	<div class="col-md-6">
            <div class="panel with-nav-tabs panel-default">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1default" data-toggle="tab">Project Creation</a></li>
                            <li><a href="#tab2default" data-toggle="tab">Validate Groups</a></li>
                            <li><a href="#tab3default" data-toggle="tab">Tutors and Clients </a></li>
                            <li><a href="#tab4default" data-toggle="tab">Overview </a></li>
              <!--              <li class="dropdown">
                                <a href="#" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#tab4default" data-toggle="tab">Default 4</a></li>
                                    <li><a href="#tab5default" data-toggle="tab">Default 5</a></li>
                                </ul>
                            </li>-->
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        
<!--                        content of first tab-->
                        <div class="tab-pane fade in active" id="tab1default">
                            

                                                <form id="tab">
                                                 <br><br>
                                                 <label><h3>Add Client   </h3></label>
                                                 <br> <br>
                                                 <label>First Name</label>
                                                      :   <input type="text" value="First name" class="input-xlarge"><br><br>
                                                 <label>Last Name</label>
                                                      :   <input type="text" value="Last name" class="input-xlarge"><br><br>
                                                 <label>Email</label>
                                                      :   <input type="text" value="example@mailservice.com" class="input-xlarge"><br><br>
                                                    <label>Project Title</label>   
                                                      :   <input type="text" value="Subject" class="input-xlarge"><br><br>
                                                 <label>Project Description    </label>
                                                 <textarea rows="3" class="input-lg">Describe the project in brief</textarea>

                                                   <br><br>
                                                 <label><h3>Add Tutors   </h3></label>
                                                 <br> <br>
                                                 <label>First Name</label>
                                                      :   <input type="text" value="First name" class="input-xlarge"><br><br>
                                                 <label>Last Name</label>
                                                      :   <input type="text" value="Last name" class="input-xlarge"><br><br>
                                                 <label>Email</label>
                                                      :   <input type="text" value="example@mailservice.com" class="input-xlarge"><br><br>


                                                     <div>
                                                         <button class="btn btn-primary">Update</button>
                                                     </div>
                                                </form>                                        

                         </div>

 <!--                      Student group review-->

                         <div class="tab-pane fade" id="tab2default">

                         <label>Group Name </label>
                            :   <input type="text" value="Name of the group" class="input-xlarge"><br><br>


                                 <label>Student No. 1</label>
                                                  :   <input type="text" value="name" class="input-xlarge"><br><br>
                                  <label>Student No. 2</label>
                                                            :   <input type="text" value="name" class="input-xlarge"><br><br>
                                  <label>Student No. 3</label>
                                                            :   <input type="text" value="name" class="input-xlarge"><br><br>                  
                                 <label>Student No. 4</label>
                                                            :   <input type="text" value="name" class="input-xlarge"><br><br>
                                 <label>Student No. 5</label>
                                                            :   <input type="text" value="name" class="input-xlarge"><br><br>
                                 <label>Student No. 6</label>
                                                            :   <input type="text" value="name" class="input-xlarge"><br><br>
                                    <div>
                                                                <button class="btn btn-primary">Confirm</button>
                                     </div>                       
                                                            

                         </div>
 
<!--                Search based on students and subjects -->
                         <div class="tab-pane fade" id="tab3default">
                                      <div ng-app="myApp" ng-controller="namesCtrl">
                                                                                                                                                    
                                                                        <table class="table" border="1" width="100%">
                                                                            <tr>
                                                                            <th ng-click="orderByMe('name')">Name</th>
                                                                            <th ng-click="orderByMe('tutor')">Tutors</th>
                                                                            </tr>
                                                                            <tr ng-repeat="x in names | orderBy:myOrderBy">
                                                                            <td>{{x.name}}</td>
                                                                            <td>{{x.tutor}}</td>
                                                                            </tr>
                                                                            </table>
                                                                        
                                                                        
                                                                        </div>

                                                                             <script>
                                                                                angular.module('myApp', []).controller('namesCtrl', function($scope) {
                                                                                    $scope.names = [
                                                                                        {name: 'Team Bordeaux', tutor: 'Mr Malency'},
                                                                                         {name:'Khaki Green Team', tutor: 'Mr Malency'},
                                                                                         {name:'Orange Team',tutor: 'Mr Gregory'},
                                                                                         {name:'yellow Team',tutor: 'Mr Gregory'},
                                                                                        {name: 'blue Team',tutor: 'Mr Gregory'},
                                                                                         {name:'Gustav',tutor: 'Mr Gregory'},
                                                                                         {name:'Birgit', tutor: 'Mr Feilleuton'}                                                                                  
                                                                                    ];
                                                                                 $scope.orderByMe = function(x) {
                                                                                     $scope.myOrderBy = x;
                                                                                 }
                                                                                });
                                                                                </script>
                             
                           
                         
                         </div>
                                               <div class="tab-pane fade" id="tab4default">
                                                                <p>Detailed overview of ongoing projects....</p>
                             

                                                            </div>
                       
                     </div>
                 </div>
             </div>
         </div>