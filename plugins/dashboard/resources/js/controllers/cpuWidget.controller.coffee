angular.module('ajenti.dashboard').controller 'CPUWidgetController', ($scope) ->
    $scope.$on 'widget-update', ($event, id, data) ->
        if id != $scope.widget.id
            return
        $scope.avg = 0
        $scope.cores = 0
        for x in data
            $scope.avg += x / data.length
            if x > 0
                $scope.cores += 1
        $scope.avgPercent = Math.floor($scope.avg * 100)
        $scope.values = data
