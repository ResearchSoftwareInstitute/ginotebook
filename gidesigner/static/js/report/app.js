(function() {
  angular.module("RadarChart", [])
    .directive("radar", radar)
    .directive("onReadFile", onReadFile)
    .controller("MainCtrl", MainCtrl);

  // controller function MainCtrl
  function MainCtrl($http) {
    var ctrl = this;
    init();


    // function init
    function init() {
      // initialize controller variables
      ctrl.examples = [
        DATA_URL + "data_report"
      ];
      ctrl.exampleSelected = ctrl.examples[0];
      ctrl.getData = getData;
      ctrl.selectExample = selectExample;

      // initialize controller functions
      ctrl.selectExample(ctrl.exampleSelected);

    }

    // function getData
    function getData($fileContent) {
      ctrl.csv = $fileContent;
    }

    // function selectExample
    function selectExample(item) {
      var file = item + ".csv";
      //var file = item;
      $http.get(file).success(function(data) {
        ctrl.csv = data;
      });
    }
  }

  // directive function sunburst
  function radar() {
    return {
      restrict: "E",
      scope: {
        csv: "=",
        config: "="
      },
      link: radarDraw
    };
  }


  // directive function onReadFile
  function onReadFile($parse) {
    return {
      restrict: "A",
      scope: false,
      link: function(scope, element, attrs) {
        var fn = $parse(attrs.onReadFile);
        element.on("change", function(onChangeEvent) {
          var reader = new FileReader();
          reader.onload = function(onLoadEvent) {
            scope.$apply(function() {
              fn(scope, {
                $fileContent: onLoadEvent.target.result
              });
            });
          };
          reader.readAsText((onChangeEvent.srcElement || onChangeEvent.target).files[0]);
        });
      }
    };
  }
})();