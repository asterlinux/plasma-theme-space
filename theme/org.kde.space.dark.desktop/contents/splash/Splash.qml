/*
    SPDX-FileCopyrightText: 2014 Marco Martin <mart@kde.org>

    SPDX-License-Identifier: GPL-2.0-or-later
*/

import QtQuick 2.1

Rectangle {
    id: root
    color: "black"    
    property int stage

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
        }
    }
    Item {
        id: content
        anchors.fill: parent
        opacity: 1
        Image {
            id: logo
            property real size: PlasmaCore.Units.gridUnit * 8

            anchors.centerIn: parent

            source: "images/asterlinux.svg"

            sourceSize.width: 128
            sourceSize.height:128
}
        Rectangle {
            radius: 3
            color: "#31363b"
            y: 500
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            height: 5
            width: height*32
            Rectangle {
                radius: 3
                anchors {
                    left: parent.left
                    top: parent.top
                    bottom: parent.bottom
                }
                width: (parent.width / 6) * (stage - 1)
                color: "#3daee9"
                Behavior on width { 
                    PropertyAnimation {
                        duration: 250
                        easing.type: Easing.InOutQuad
                    }
                }
            }
     }
}

    SequentialAnimation {
        id: introAnimation
        running: false

        ParallelAnimation {
            PropertyAnimation {
                property: "y"
                target: topRect
                to: root.height / 3
                duration: 1000
                easing.type: Easing.InOutBack
                easing.overshoot: 1.0
            }

            PropertyAnimation {
                property: "y"
                target: bottomRect
                to: 2 * (root.height / 3) - bottomRect.height
                duration: 1000
                easing.type: Easing.InOutBack
                easing.overshoot: 1.0
            }
        }
    }
}
