import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
//import Qt5Compat.GraphicalEffects
import QtQuick.Dialogs 1.3
import "controls"

Window {
    id: mainWindow
    width: 1350
    height: 825
    minimumWidth: 1000
    minimumHeight: 825
    visible: true
    color: "#00000000"
    title: qsTr("Lunar")

    // Windows pencere cubugu kaldirma
    flags: Qt.Window | Qt.FramelessWindowHint

    // Propeties
    property int windowStatus: 0
    property int windowMargin: 10

    // Internal functions
    QtObject {
        id: internal

        function resetResizeBorders() {
            // Resize visibility
            resizeLeft.visible = true
            resizeRight.visible = true
            resizeBottom.visible = true
            resizeWindow.visible = true
        }

        function maximizeRestore() {
            if (windowStatus == 0) {
                mainWindow.showMaximized()
                windowStatus = 1
                windowMargin = 0
                // Resize visibility
                resizeLeft.visible = false
                resizeRight.visible = false
                resizeBottom.visible = false
                resizeWindow.visible = false
                buttonMaxRes.btnIconSource = "../images/svg_images/restore_icon.svg"
            } else {
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                // Resize visibility
                internal.resetResizeBorders()
                buttonMaxRes.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function ifMaximizedWindowRestore() {
            if (windowStatus == 1) {
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                // Resize visibility
                internal.resetResizeBorders()
                buttonMaxRes.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function restoreMargins() {
            windowStatus = 0
            windowMargin = 10
            // Resize visibility
            internal.resetResizeBorders()
            buttonMaxRes.btnIconSource = "../images/svg_images/maximize_icon.svg"
        }
    }

    Rectangle {
        id: bg
        color: "#181824"
        radius: 0
        border.color: "#1e272e"
        border.width: 2
        anchors.fill: parent
        anchors.rightMargin: windowMargin
        anchors.leftMargin: windowMargin
        anchors.bottomMargin: windowMargin
        anchors.topMargin: windowMargin

        z: 1

        Rectangle {
            id: appContainer
            color: "#181824"
            radius: 0
            border.color: "#00000000"
            border.width: 0
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: topBar
                height: 60
                color: "#09050D"

                anchors.left: leftBar.right
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                Rectangle {
                    id: titleBar
                    height: 35
                    color: "#09050D"
                    border.color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 0

                    DragHandler {
                        onActiveChanged: if (active) {
                                             mainWindow.startSystemMove()
                                             internal.ifMaximizedWindowRestore()
                                         }
                    }

                    Label {
                        id: lableTitle
                        color: "#d2dae2"
                        text: qsTr("LUNAR | Drone Sistem Arayüzü")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        font.pointSize: 13
                        font.family: "Noto Sans"
                        anchors.leftMargin: 10
                    }
                }

                Row {
                    id: rowButtons
                    x: 710
                    width: 518
                    height: 35
                    anchors.right: parent.right
                    anchors.top: parent.top
                    layoutDirection: Qt.RightToLeft
                    anchors.rightMargin: 0
                    anchors.topMargin: 0

                    TopBarButton {
                        id: buttonClose
                        btnColorDefault: "#09050d"
                        btnColorMouseOver: "#181824"
                        btnColorClicked: "#f53b57"
                        btnIconSource: "../images/svg_images/close_icon.svg"

                        onClicked: mainWindow.close()
                    }

                    TopBarButton {
                        id: buttonMaxRes
                        btnColorDefault: "#09050d"
                        btnColorMouseOver: "#181824"
                        btnColorClicked: "#d71444"
                        btnIconSource: "../images/svg_images/maximize_icon.svg"
                        onClicked: internal.maximizeRestore()
                    }

                    TopBarButton {
                        id: buttonMinimize
                        btnColorMouseOver: "#181824"
                        btnColorDefault: "#09050d"
                        btnColorClicked: "#d71444"
                        btnIconSource: "../images/svg_images/minimize_icon.svg"

                        onClicked: {
                            mainWindow.showMinimized()
                            internal.restoreMargins()
                        }
                    }

                    CustomButton {
                        id: buttonConnect
                        width: 180
                        height: 35
                        text: "BAĞLAN"
                        font.letterSpacing: 1.5
                        colorPressed: "#98374e"
                        colorMouseOver: "#d44d6d"
                        colorDefault: "#d71444"
                        font.italic: false
                        font.weight: Font.Medium
                        font.bold: true
                        font.pointSize: 10
                        font.family: "Noto Sans"

                        onClicked: {
                            backend.getComPort(cb_com.displayText)
                            backend.getBaudRate(cb_baud.displayText)
                        }
                    }

                    ComboBoxBaud {
                        id: cb_baud
                        width: 100
                        height: 35
                        colorPressed: "#076fbf"
                        colorMouseOver: "#087cd5"
                        colorDefault: "#09050D"
                    }

                    ComboBoxComPort {
                        id: cb_com
                        height: 35
                        colorPressed: "#2f323d"
                        colorMouseOver: "#3b3e4c"
                        colorDefault: "#09050D"
                    }
                    AnimatedImage {
                        id: loadingConnect
                        width: 20
                        height: 20
                        visible: false
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: cb_com.left
                        source: "../images/loading.gif"
                        anchors.rightMargin: 10
                    }
                }

                Rectangle {
                    id: subBar
                    height: 2
                    color: "#09050D"
                    border.color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: titleBar.bottom
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 1
                    anchors.leftMargin: 0
                    anchors.topMargin: 0

                    Label {
                        id: labelTopInfo
                        height: 12
                        color: "#808e9b"
                        text: qsTr("Bursa Uludağ Üniversitesi - Lunar İHA Takımı (2023)")
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 6
                        font.family: "Noto Sans"
                        anchors.rightMargin: 200
                        anchors.leftMargin: 10
                    }


                    /*
                    Label {
                        id: labelRightInfo
                        color: "#808e9b"
                        text: qsTr("2023")
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.pointSize: 8
                        font.family: "Noto Sans"
                    }*/
                }
            }

            Rectangle {
                id: leftBar
                x: 0
                y: 0
                width: 5
                color: "#09050D"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 0

                Column {
                    id: columnMenu
                    anchors.fill: parent
                    anchors.bottomMargin: 30
                    anchors.topMargin: 5


                    /*LeftMenuBtn {
                        id: buttonHome
                        btnColorMouseOver: "#181e34"
                        activeMenuColor: "#0fbcf9"
                        btnColorDefault: "#0e111e"
                        activeMenuColorRight: "#474a5b"
                        iconWidth: 16
                        iconHeight: 16
                        btnIconSource: "../images/svg_images/home_icon.svg"
                        isActiveMenu: true
                        onClicked: {
                            buttonHome.isActiveMenu = true
                            buttonSettings.isActiveMenu = false
                            stackView.push(Qt.resolvedUrl("pages/homePage.qml"))
                        }
                    }

                    LeftMenuBtn {
                        id: buttonSettings
                        btnColorMouseOver: "#181e34"
                        activeMenuColor: "#0fbcf9"
                        btnColorDefault: "#0e111e"
                        activeMenuColorRight: "#474a5b"
                        iconWidth: 16
                        btnIconSource: "../images/svg_images/settings_icon.svg"
                        iconHeight: 16
                        // Butona tiklayinca istenilen sayfanin yuklenmesi
                        onClicked: {
                            buttonHome.isActiveMenu = false
                            buttonSettings.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl(
                                               "pages/settingsPage.qml"))
                        }
                    }*/
                }
            }

            Rectangle {
                id: content
                color: "#ffffffff"
                border.color: "#00000000"
                anchors.left: leftBar.right
                anchors.right: parent.right
                anchors.top: topBar.bottom
                anchors.bottom: parent.bottom
                clip: true
                anchors.leftMargin: 0
                anchors.topMargin: 0

                StackView {
                    id: stackView
                    anchors.fill: parent
                    initialItem: Qt.resolvedUrl("pages/homePage.qml")
                }
            }
        }
    }

    DropShadow {
        anchors.fill: bg
        horizontalOffset: 0
        verticalOffset: 0
        radius: 10
        samples: 16
        color: "#80000000"
        source: bg
        z: 0
    }
    MouseArea {
        id: resizeLeft
        width: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler {
            target: null
            onActiveChanged: if (active) {
                                 mainWindow.startSystemResize(Qt.LeftEdge)
                             }
        }
    }

    MouseArea {
        id: resizeRight
        width: 10
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler {
            target: null
            onActiveChanged: if (active) {
                                 mainWindow.startSystemResize(Qt.RightEdge)
                             }
        }
    }

    MouseArea {
        id: resizeWindow
        x: 947
        y: 640
        width: 25
        height: 25
        opacity: 0.5
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        cursorShape: Qt.SizeFDiagCursor

        DragHandler {
            target: null
            onActiveChanged: if (active) {
                                 mainWindow.startSystemResize(
                                             Qt.RightEdge | Qt.BottomEdge)
                             }
        }
    }

    MouseArea {
        id: resizeBottom
        height: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 0
        cursorShape: Qt.SizeVerCursor

        DragHandler {
            target: null
            onActiveChanged: if (active) {
                                 mainWindow.startSystemResize(Qt.BottomEdge)
                             }
        }
    }

    Connections {
        target: backend

        function onChangeConnectionButtonText(value) {
            buttonConnect.text = value
        }

        function onChangeConnectionButtonColor(value) {
            buttonConnect.colorDefault = value
            buttonConnect.colorMouseOver = value
            buttonConnect.colorPressed = value
        }

        // Yukleme ikon
        function onIsLoadingVisible(value) {
            loadingConnect.visible = value
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/

