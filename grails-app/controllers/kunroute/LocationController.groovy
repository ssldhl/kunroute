package kunroute

import grails.plugin.geocode.Point

class LocationController {
    def geocodingService

    def index() { }

    def getRoute(){
        Point sourceLocation = geocodingService.getPoint(params.sourceName)
        Point destinationLocation = geocodingService.getPoint(params.destinationName)
        println "----------------"
        println "Source Longitude = "+sourceLocation.longitude
        println "Source Latitude = "+sourceLocation.latitude
        println "----------------"
        println "----------------"
        println "Destination Longitude = "+destinationLocation.longitude
        println "Destination Latitude = "+destinationLocation.latitude
        println "----------------"
        render "sourceLocation = "+sourceLocation+" destinationLocation = "+destinationLocation
    }
}
