import QtQuick 2.7
import QtQuick.Controls 2.0
import QtCharts 2.15
import "."

ChartView {
    title: "Temperature"
    id: chartView
    anchors.fill: parent

    ValueAxis {
        id: axisX
        min: 0
        max: 9
    }

    ValueAxis {
        id: axisY
        min: -5
        max: 30
    }

    Component.onCompleted:  {
        temp_sensor_mapper.series = series2
    }

    SplineSeries {
        id: series2
        axisX: axisX
        axisY: axisY
        name: "BME280"
    }
}