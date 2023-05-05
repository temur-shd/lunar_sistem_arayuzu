import QtQuick 2.0
import QtQuick.Controls 2.15
import "../controls"
//import QtPositioning 5.14
import QtGraphicalEffects 1.0

Item {

    Rectangle {
        id: main_area
        color: "#181824"
        anchors.fill: parent

        Flow {
            id: flow_area
            anchors.fill: parent
            clip: false
            layoutDirection: Qt.LeftToRight
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.topMargin: 10
            transformOrigin: Item.Center
            flow: Flow.LeftToRight
            anchors.bottomMargin: 55
            spacing: 35

            Rectangle {
                id: airspeed
                width: 290
                height: 302
                radius: 25
                color: "#09050D"
                clip: false

                Rectangle {
                    id: indicator_area
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 10

                    Image {
                        id: asi_case
                        anchors.fill: parent
                        source: "../../images/svg_images/ais/ais_case_v10.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: asi_hand
                        anchors.fill: parent
                        source: "../../images/svg_images/ais/ais_hand_v3.png"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: asi_text
                        x: 102
                        y: 222
                        width: 67
                        height: 28
                        color: "#ffffffff"
                        text: qsTr("0")
                        font.pixelSize: 23
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        minimumPixelSize: 15
                        font.weight: Font.Black
                        font.family: "Noto Sans"
                    }
                }

                Text {
                    id: asitext
                    x: 102
                    y: 312
                    width: 67
                    height: 12
                    color: "#ffffffff"
                    text: qsTr("HIZ")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    minimumPixelSize: 15
                    font.weight: Font.Black
                    font.family: "Noto Sans"
                }
            }

            Rectangle {
                id: attitude_direction //durum göstergesi
                width: 290
                height: 302
                radius: 25
                color: "#09050D"

                Rectangle {
                    id: indicator_area1
                    color: "#09050D"
                    radius: 25
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 15
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 15

                    Image {
                        id: adi_back
                        anchors.fill: parent
                        source: "../../images/svg_images/adi/adi_back_v4.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Rectangle {
                        id: rectangle
                        width: 280
                        height: 302
                        radius: 25
                        color: "#09050D"
                        anchors.verticalCenter: parent.verticalCenter
                        clip: true
                        anchors.horizontalCenter: parent.horizontalCenter

                        Image {
                            id: adi_inner
                            x: 0
                            y: 0
                            width: 280
                            height: 302
                            opacity: 0.9
                            anchors.verticalCenter: parent.verticalCenter
                            source: "../../images/svg_images/adi/adi_face_big_v6.png"
                            anchors.verticalCenterOffset: 0
                            anchors.horizontalCenter: parent.horizontalCenter
                            // degisecek deger
                            fillMode: Image.PreserveAspectFit
                        }
                    }

                    Image {
                        id: adi_outer
                        anchors.fill: parent
                        source: "../../images/svg_images/adi/adi_ring_v4.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: adi_case
                        anchors.fill: parent
                        source: "../../images/svg_images/adi/adi_case_v12.png"
                        clip: true
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Text {
                    id: durum_göstergesi_text
                    x: 102
                    y: 312
                    width: 67
                    height: 12
                    color: "#ffffffff"
                    text: qsTr("DURUM GÖSTERGESİ")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    minimumPixelSize: 15
                    font.weight: Font.Black
                    font.family: "Noto Sans"
                }
            }

            Rectangle {
                id: altimeter //////////////////////////////////////////////////////////////////////irtifaa
                width: 290
                height: 302
                radius: 25
                border.width: 0
                color: "#09050D"

                Rectangle {
                    id: indicator_area2
                    color: "#09050D"
                    radius: 25

                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15
                    anchors.rightMargin: 0
                    anchors.topMargin: 15
                    anchors.leftMargin: 0

                    Image {
                        id: bg_circle2
                        x: -812
                        y: 381
                        width: 275
                        height: 302
                        anchors.verticalCenter: parent.verticalCenter
                        source: "../../images/svg_images/bg_circle.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: alt_case
                        anchors.fill: parent
                        source: "../../images/svg_images/alt/alt_case_v3.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: alt_text
                        x: 171
                        y: 100
                        width: 65
                        height: 28
                        color: "#ffffffff"
                        text: qsTr("0")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 23
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.Black
                        font.family: "Noto Sans"
                        anchors.verticalCenterOffset: 80
                        anchors.horizontalCenterOffset: -1
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Image {
                        id: alt_needle_mini
                        anchors.fill: parent
                        source: "../../images/svg_images/alt/alt_hand_v2.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Text {
                    id: irtifa_text
                    x: 102
                    y: 312
                    width: 67
                    height: 12
                    color: "#ffffffff"
                    text: qsTr("İRTİFA")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    minimumPixelSize: 15
                    font.weight: Font.Black
                    font.family: "Noto Sans"
                }
            }

            Rectangle {
                ////////////////////////////////////////////////////////////////////////////////tc///
                id: turn_coordinator
                width: 290
                height: 302
                radius: 25
                border.width: 0
                color: "#09050D"

                Rectangle {
                    id: indicator_area3
                    color: "#09050D"
                    radius: 25

                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 15

                    Image {
                        id: bg_circle1
                        x: 44
                        y: -364
                        width: 290
                        height: 302
                        anchors.verticalCenter: parent.verticalCenter
                        source: "../../images/svg_images/bg_circle.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: tc_plane
                        anchors.fill: parent
                        source: "../../images/svg_images/tc/tc_drone.png"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }
                    Image {
                        id: tc_case
                        anchors.fill: parent
                        source: "../../images/svg_images/tc/tc_case_v2.png"
                        fillMode: Image.PreserveAspectFit
                    }


                    /*
                    Image {
                        id: tc_ball
                        y: 58
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../../images/svg_images/tc/tc_ball_v2.png"
                        anchors.horizontalCenterOffset: 0 // degisecek deger
                        anchors.horizontalCenter: parent.horizontalCenter
                        // degisecek parametre
                        fillMode: Image.PreserveAspectFit
                    }*/
                    Image {
                        id: tc_cubuk
                        anchors.fill: parent
                        source: "../../images/svg_images/tc/tc_face_v3.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Text {
                    id: turn_cordinator_text
                    x: 115
                    y: 312
                    width: 67
                    height: 12
                    color: "#ffffffff"
                    text: qsTr("DÖNÜŞ KOORDİNATÖRÜ")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    minimumPixelSize: 15
                    font.weight: Font.Black
                    font.family: "Noto Sans"
                }
            }

            Rectangle {
                ////////// yatay hız ////////////////////////
                id: vertical_speed_indicator_area
                width: 290
                height: 302
                radius: 25
                color: "#09050D"

                Rectangle {
                    id: indicator_area5
                    color: "#09050D"
                    radius: 25
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 15

                    Image {
                        id: bg_circle3
                        x: -812
                        y: 0
                        width: 290
                        height: 302
                        anchors.verticalCenter: parent.verticalCenter
                        source: "../../images/svg_images/bg_circle.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: vsi_case
                        anchors.fill: parent
                        source: "../../images/svg_images/vsi/vsi_case_v2.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: vsi_text
                        x: 159
                        y: -148
                        width: 65
                        height: 26
                        text: qsTr("0")
                        color: "#ffffffff"
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.verticalCenterOffset: 93
                        font.weight: Font.Black
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.horizontalCenterOffset: 0
                        font.family: "Noto Sans"
                    }

                    Image {
                        id: vsi_hand
                        anchors.fill: parent
                        source: "../../images/svg_images/vsi/vsi_hand_v2.png"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Text {
                    id: dikey_hiz_text
                    x: 100
                    y: 312
                    width: 67
                    height: 12
                    color: "#ffffffff"
                    text: qsTr("DİKEY HIZ")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    minimumPixelSize: 15
                    font.weight: Font.Black
                    font.family: "Noto Sans"
                }
            }

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            Rectangle {
                id: mesafe_sensoru
                width: 290
                height: 302
                radius: 25
                border.width: 0
                color: "#09050D"

                Rectangle {
                    id: indicator_area6
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15
                    anchors.rightMargin: 0
                    anchors.topMargin: 15
                    anchors.leftMargin: 0

                    Image {
                        id: mesafe_sensoru_face
                        anchors.fill: parent
                        source: "../../images/svg_images/msens/msens_face.png"
                        fillMode: Image.PreserveAspectFit
                    }


                    /*
                    Image {
                        id: mesafe_sensoru_case
                        anchors.fill: parent
                        source: "../../images/svg_images/hsi/hsi_v5.png"
                        fillMode: Image.PreserveAspectFit
                    }
*/
                    Image {
                        id: mesafe_sensoru_cover
                        anchors.fill: parent
                        source: "../../images/svg_images/msens/msens_case.png"
                        fillMode: Image.PreserveAspectFit
                    }
                    Text {
                        id: sensor_text
                        x: 171
                        y: 50
                        width: 65
                        height: 25
                        color: "#ffffffff"
                        text: qsTr("0")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 23
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.Black
                        font.family: "Noto Sans"
                        anchors.verticalCenterOffset: 80
                        anchors.horizontalCenterOffset: -1
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Text {
                    id: mesafe_sensoru_text
                    x: 115
                    y: 312
                    width: 67
                    height: 12
                    color: "#ffffffff"
                    text: qsTr("MESAFE SENSÖRÜ")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    minimumPixelSize: 15
                    font.weight: Font.Black
                    font.family: "Noto Sans"
                }
            }
            Rectangle {
                id: atesleme_mek
                width: 290
                height: 302
                radius: 25
                border.width: 0
                color: "#09050D"

                Rectangle {
                    id: indicator_area7
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15
                    anchors.rightMargin: 0
                    anchors.topMargin: 15
                    anchors.leftMargin: 0

                    Image {
                        id: atesleme_mek_face
                        anchors.fill: parent
                        source: "../../images/svg_images/fire/fire_face.png"
                        fillMode: Image.PreserveAspectFit
                    }


                    /*
                    Image {
                        id: atesleme_mek_case
                        anchors.fill: parent
                        source: "../../images/svg_images/hsi/hsi_v5.png"
                        fillMode: Image.PreserveAspectFit
                    }*/
                    Image {
                        id: atesleme_mek_cover
                        anchors.fill: parent
                        source: "../../images/svg_images/fire/fire_case.png"
                        fillMode: Image.PreserveAspectFit
                    }
                    Text {
                        id: ates_text
                        x: 171
                        y: 50
                        width: 65
                        height: 25
                        color: "#ffffffff"
                        text: qsTr("OFF")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 23
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.Black
                        font.family: "Noto Sans"
                        anchors.verticalCenterOffset: 80
                        anchors.horizontalCenterOffset: -1
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Text {
                    id: atesleme_mek_text
                    x: 115
                    y: 312
                    width: 67
                    height: 12
                    color: "#ffffffff"
                    text: qsTr("ATEŞLEME MEK.")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    minimumPixelSize: 15
                    font.weight: Font.Black
                    font.family: "Noto Sans"
                }
            }
            Rectangle {
                id: tutma
                width: 290
                height: 302
                radius: 25
                border.width: 0
                color: "#09050D"

                Rectangle {
                    id: indicator_area8
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15
                    anchors.rightMargin: 0
                    anchors.topMargin: 15
                    anchors.leftMargin: 0

                    Image {
                        id: tutma_face
                        anchors.fill: parent
                        source: "../../images/svg_images/gorev/dedektor_face_asıl_olan.png"
                        fillMode: Image.PreserveAspectFit
                    }


                    /*
                    Image {
                        id: dedektor_case
                        anchors.fill: parent
                        source: "../../images/svg_images/hsi/hsi_v5.png"
                        fillMode: Image.PreserveAspectFit
                    }*/
                    Image {
                        id: tutma_cover
                        anchors.fill: parent
                        source: "../../images/svg_images/gorev/tutma_case.png"
                        fillMode: Image.PreserveAspectFit
                    }
                    Text {
                        id: tutma_mek_text
                        x: 171
                        y: 50
                        width: 65
                        height: 25
                        color: "#ffffffff"
                        text: qsTr("OFF")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 23
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.Black
                        font.family: "Noto Sans"
                        anchors.verticalCenterOffset: 80
                        anchors.horizontalCenterOffset: -1
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
                Text {
                    id: tutma_text
                    x: 115
                    y: 312
                    width: 67
                    height: 12
                    color: "#ffffffff"
                    text: qsTr("DEDEKTÖR")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    minimumPixelSize: 15
                    font.weight: Font.Black
                    font.family: "Noto Sans"
                }
            }
        }
        ///////////////////////////////#############################################////////////////////////////////////
        Rectangle {
            id: bottom_area
            color: "#00000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: flow_area.bottom
            anchors.bottom: parent.bottom
            anchors.topMargin: 0

            Row {
                id: row_bottom
                anchors.fill: parent
                spacing: 10
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 5

                Rectangle {
                    id: arm_box
                    width: 100
                    height: 45
                    radius: 10


                    /*
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#181824"
                        }

                        GradientStop {
                            position: 1
                            color: "#09050D"
                        }
                    }*/
                    color: "#09050D"

                    Text {
                        id: arm_text
                        height: 50
                        color: "#d71444"
                        text: qsTr("ARM")
                        anchors.fill: parent
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.Black
                        font.family: "Noto Sans"
                    }
                }

                Rectangle {
                    id: mode_box
                    width: 310
                    height: 45
                    radius: 10


                    /*
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#181824"
                        }

                        GradientStop {
                            position: 1
                            color: "#09050D"
                        }
                    }*/
                    color: "#09050D"
                    Text {
                        id: flight_mode_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: mode.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                    }

                    Text {
                        id: mode
                        width: 97
                        color: "#ffffff"
                        text: qsTr("Uçuş Modu")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 10
                        anchors.leftMargin: 15
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                    }


                    /*
                    Text {
                        id: mode1
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Flight Mode")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        anchors.bottomMargin: 5
                        font.family: "Noto Sans"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }*/
                }

                Rectangle {
                    id: sat_box
                    width: 120
                    height: 45
                    radius: 10


                    /*
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#181824"
                        }

                        GradientStop {
                            position: 1
                            color: "#09050D"
                        }
                    }*/
                    color: "#09050D"
                    Text {
                        id: sat_text
                        width: 104
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: sat.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: sat
                        width: 46
                        color: "#ffffff"
                        text: qsTr("Uydu")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 10
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                        anchors.leftMargin: 15
                    }


                    /*
                    Text {
                        id: mode3
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Satellite")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Noto Sans"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }*/
                }

                Rectangle {
                    id: gps_lat_box
                    width: 230
                    height: 45
                    radius: 10


                    /*
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#181824"
                        }

                        GradientStop {
                            position: 1
                            color: "#09050D"
                        }
                    }*/
                    color: "#09050D"
                    Text {
                        id: lat
                        width: 64
                        color: "#ffffff"
                        text: qsTr("Enlem")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 10
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: lat_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: lat.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                        anchors.leftMargin: 10
                    }


                    /*
                    Text {
                        id: mode4
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Latitude")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Noto Sans"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }*/
                }

                Rectangle {
                    id: gps_lon_box
                    width: 230
                    height: 45
                    radius: 10


                    /*
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#181824"
                        }

                        GradientStop {
                            position: 1
                            color: "#09050D"
                        }
                    }*/
                    color: "#09050D"
                    Text {
                        id: lon
                        width: 64
                        color: "#ffffff"
                        text: qsTr("Boylam")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 10
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: lon_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: lon.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                        anchors.leftMargin: 10
                    }


                    /*
                    Text {
                        id: mode5
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Longitude")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Noto Sans"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }*/
                }
                Rectangle {
                    id: battery_box
                    width: 150
                    height: 45
                    radius: 10


                    /*
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#181824"
                        }

                        GradientStop {
                            position: 1
                            color: "#09050D"
                        }
                    }*/
                    color: "#09050D"
                    Text {
                        id: battery_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: bat.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: bat
                        width: 67
                        color: "#ffffff"
                        text: qsTr("Batarya")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 10
                        font.family: "Noto Sans"
                        font.weight: Font.Black
                        anchors.leftMargin: 15
                    }


                    /*
                    Text {
                        id: mode2
                        x: -305
                        y: 24
                        width: 97
                        color: "#d71444"
                        text: qsTr("Battery")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Noto Sans"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }*/
                }
            }
        }
    }

    // ARKA YUZ BAGLANTILARI
    Connections {
        target: backend

        // ALT DEGERLER ---------------------------------------------------------

        // ARM
        function onChangeArm(value) {
            if (value) {
                arm_text.color = "#D71444"
            } else if (!value) {
                arm_text.color = "#00b156"
            }
        }

        // Ucus modu
        function onChangeFlightMode(value) {
            flight_mode_text.text = value
        }

        // Uydu sayisi
        function onChangeSatNum(value) {
            sat_text.text = value
        }

        // Batarya
        function onChangeBattery(value) {
            battery_text.text = value
        }

        // GPS Lat
        function onChangeLat(value) {
            lat_text.text = value
        }

        // GPS Lon
        function onChangeLon(value) {
            lon_text.text = value
        }

        // ------------------------------------------------------------------------

        // YAW - Dronekit
        function onChangeYawValue(value) {
            hsi_face.rotation = value
            // yaw_value.text = value
        }

        // PITCH - Dronekit
        function onChangePitchValue(value) {
            // Attitude Direction Indicator
            adi_inner.anchors.verticalCenterOffset = value
        }

        // ROLL - Dronekit
        function onChangeRollValue(value) {

            // Turn Coordinator
            tc_plane.rotation = value
            // roll_value.text = value

            // Attitude Direction Indicator
            adi_inner.rotation = value
            adi_outer.rotation = value
        }

        // TURN COORDINATOR BALL
        function onChangeTcBall(value) {
            tc_ball.anchors.horizontalCenterOffset = value
        }

        // AIRSPEED VALUE - Dronekit
        function onChangeAisValue(value) {
            asi_hand.rotation = value
        }
        function onChangeAisTextValue(text) {
            asi_text.text = text
        }

        // HEADING - Dronekit
        function onChangeHeadingValue(value) {
            hsi_face.rotation = value
            // heading_value.text = value
        }

        // ALTITUDE (ALTIMETTR) - Dronekit
        function onChangeAltitudeValue(value) {
            alt_needle_mini.rotation = value
        }

        function onChangeAltText(value) {
            alt_text.text = value
        }

        // VERTICAL SPEED - Dronekit
        function onChangeVerticalSpeedValue(value) {
            vsi_hand.rotation = value
        }

        function onChangeVerticalSpeedText(value) {
            vsi_text.text = value
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:818;width:1218}
}
##^##*/

