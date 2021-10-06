angular.module('myApp').controller('articleCtrl', function($scope, $http) {
  var title = "Learn AngularJS";
  var titles = "myTitles - from CONTROLLERs";
  var n = 1;
  var answer = 1;
  var dbLen = 0;

  var App = angular.module('App', []);

  $scope.title = title;
  $scope.titles = titles;

  $scope.num = Math.floor((Math.random() * 182) + 1);


  $scope.getQuestion = function(dbCountry) {
    n = Math.floor((Math.random() * dbLen) + 1);

    return dbCountry[n];
  };

  $scope.getC = function(dbCountry) {
    var n1 = Math.floor((Math.random() * dbLen) + 1);
    var n2 = Math.floor((Math.random() * dbLen) + 1);
    var n3 = Math.floor((Math.random() * dbLen) + 1);

    answer = Math.floor((Math.random() * 3) + 1);
    if (answer == 1) { n1 = n; } else if (answer==2) { n2 = n; } else { n3 = n; }
    return [ dbCountry[n1], dbCountry[n2], dbCountry[n3] ];
  };

  $scope.getAnswer = function() {
    return answer;
  }

  $scope.getLength = function() {
    return dbLen;
  }

  $http.get('world-database.json')
       .then(function(res){
          $scope.todos = res.data;
          dbLen = res.data.length;
        });

});
