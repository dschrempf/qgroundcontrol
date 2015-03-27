/*=====================================================================

QGroundControl Open Source Ground Control Station

(c) 2009, 2015 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>

This file is part of the QGROUNDCONTROL project

    QGROUNDCONTROL is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    QGROUNDCONTROL is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with QGROUNDCONTROL. If not, see <http://www.gnu.org/licenses/>.

======================================================================*/

/**
 * @file
 *   @brief QGC Current Speed Indicator
 *   @author Gus Grubba <mavlink@grubba.com>
 */

import QtQuick 2.1

Rectangle {
    id: root
    property real airspeed:         0
    property real groundspeed:      0
    property bool showAirSpeed:     true
    property bool showGroundSpeed:  true
    anchors.verticalCenter: parent.verticalCenter
    width:  parent.width
    height: (showAirSpeed && showGroundSpeed) ? 50 : 25
    color: "black"
    border.color: Qt.rgba(1,1,1,0.25)
    opacity: 1.0
    Column{
        anchors.centerIn: parent
        spacing: 4
        Text {
            text: 'GS: ' + groundspeed.toFixed(1)
            font.weight: Font.DemiBold
            color: "white"
            anchors.right: parent.right
            visible: showGroundSpeed
        }
        Text {
            text: 'AS: ' + airspeed.toFixed(1)
            color: "white"
            anchors.right: parent.right
            font.weight: showAirSpeed ? Font.Normal : Font.DemiBold
            visible: showAirSpeed
        }
    }
}
