/****************************************************************************
**
** Copyright (c) 2011 Nokia Corporation and/or its subsidiary(-ies).
** All rights reserved.
** Contact: Yoann Lopes (yoann.lopes@nokia.com)
**
** This file is part of the MeeSpot project.
**
** Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions
** are met:
**
** Redistributions of source code must retain the above copyright notice,
** this list of conditions and the following disclaimer.
**
** Redistributions in binary form must reproduce the above copyright
** notice, this list of conditions and the following disclaimer in the
** documentation and/or other materials provided with the distribution.
**
** Neither the name of Nokia Corporation and its Subsidiary(-ies) nor the names of its
** contributors may be used to endorse or promote products derived from
** this software without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
** FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
** TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
** PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
** LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
** NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
** SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
** If you have questions regarding the use of this file, please contact
** Nokia at qt-info@nokia.com.
**
****************************************************************************/

import QtQuick 2.0
import Ubuntu.Components 0.1;
import Ubuntu.Components.Popups 0.1;
import "UIConstants.js" as UI

Dialog {
    id: genericDialog

    //private
    property bool __drawFooterLine: false

    Column {
        width: parent.width
        anchors.top: parent.top;

        Image {
            source: "qrc:/qml/images/cutespotify-logo.png"
        }

        Label {
            text: "Version 1.3.0"
            font.pixelSize: UI.FONT_LSMALL
            color: UI.COLOR_INVERTED_FOREGROUND
        }

        Label {
            text: "Based on MeeSpot by Yoann Lopes"
            font.pixelSize: UI.FONT_LSMALL
            color: UI.COLOR_INVERTED_FOREGROUND
        }

        Label {
            text: "Copyright \u00a9 2011-2013 Yoann Lopes, Michael Sheldon"
            font.pixelSize: UI.FONT_LSMALL
            color: UI.COLOR_INVERTED_FOREGROUND
        }

        Label {
            text: "Contact: elleo@gnu.org"
            font.pixelSize: UI.FONT_LSMALL
            color: UI.COLOR_INVERTED_FOREGROUND
        }

        Item {
            width: parent.width
            height: 38
        }

        Item {
            id: contentField
            width: parent.width
            height: spotifyCoreLogo.height

            Image {
                id: spotifyCoreLogo
                source: "images/spotify-core-logo-128x128.png"
            }

            Label {
                anchors.verticalCenter: spotifyCoreLogo.verticalCenter
                anchors.left: spotifyCoreLogo.right
                anchors.leftMargin: UI.MARGIN_XLARGE
                anchors.right: parent.right
                height: parent.height
                wrapMode: Text.WordWrap
                verticalAlignment: Text.AlignVCenter
                font.family: UI.FONT_FAMILY
                font.pixelSize: UI.FONT_XSMALL
                color: UI.LIST_SUBTITLE_COLOR_INVERTED
                text: "This product uses SPOTIFY CORE but is not endorsed, certified or otherwise approved in any way by Spotify. Spotify is the registered trade mark of the Spotify Group."
            }
        }

        Item {
            width: parent.width
            height: units.gu(5)
        }

        Item {
            id: buttonColFiller
            width: parent.width
            height: childrenRect.height

            Row { 
                width: parent.width
                spacing: units.gu(10)

                Button {
                    id: donateButton
                    text: "Donate!"
                    onClicked: Qt.openUrlExternally("https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=8CK2DHNJDGBJJ&lc=GB&item_name=Michael%20Sheldon&currency_code=GBP&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted")
		}

                Button {
                    id: acceptButton
                    text: "Close"
                    onClicked: PopupUtils.close(genericDialog);
                }
            }
        }
    }
}
