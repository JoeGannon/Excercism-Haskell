module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / secondsInPlanetYear planet

earthYearSeconds :: Float
earthYearSeconds = 31557600

secondsInPlanetYear :: Planet -> Float 
secondsInPlanetYear Mercury = earthYearSeconds * 0.2408467
secondsInPlanetYear Venus = earthYearSeconds * 0.61519726
secondsInPlanetYear Earth = earthYearSeconds
secondsInPlanetYear Mars = earthYearSeconds * 1.8808158
secondsInPlanetYear Jupiter = earthYearSeconds * 11.862615
secondsInPlanetYear Saturn = earthYearSeconds * 29.447498
secondsInPlanetYear Uranus = earthYearSeconds * 84.016846
secondsInPlanetYear Neptune = earthYearSeconds * 164.79132
