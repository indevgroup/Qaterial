import QtQuick
import Qaterial 1.0 as Qaterial

Row
{
  id: root
  property bool expanded: true
  spacing: 16

  Component
  {
    id: headerComponent
    Qaterial.ItemDelegate
    {
      id: _header
      text: "Header"
      onClicked: () => root.expanded = !root.expanded

      contentItem: Qaterial.LabelHeadline6
      {
        text: parent.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
      }

      Qaterial.DebugRectangle
      {
        anchors.fill: parent;
        border.color: Qaterial.Style.green
      }
    }
  }

  Component
  {
    id: delegateComponent

    Qaterial.LabelHeadline6
    {
      id: delegate
      text: `Height : ${height.toFixed(0)}`
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      height: 100

      SequentialAnimation
      {
        running: true
        loops: Animation.Infinite
        PauseAnimation { duration: 1000 }
        NumberAnimation { target: delegate;property: "height";to: 200;duration: 1000 }
        PauseAnimation { duration: 1000 }
        NumberAnimation { target: delegate;property: "height";to: 50;duration: 500 }
        PauseAnimation { duration: 500 }
        NumberAnimation { target: delegate;property: "height";to: 100;duration: 0 }
        PauseAnimation { duration: 500 }
        NumberAnimation { target: delegate;property: "height";to: 150;duration: 0 }
        PauseAnimation { duration: 500 }
        NumberAnimation { target: delegate;property: "height";to: 200;duration: 0 }
        PauseAnimation { duration: 500 }
        NumberAnimation { target: delegate;property: "height";to: 150;duration: 0 }
        PauseAnimation { duration: 500 }
        NumberAnimation { target: delegate;property: "height";to: 100;duration: 0 }
      }

      Qaterial.DebugRectangle
      {
        anchors.fill: parent;
        border.color: Qaterial.Style.amber
      }
    }
  }

  Qaterial.Expandable
  {
    expanded: root.expanded
    header: headerComponent
    delegate: delegateComponent
  } // Expandable

  Qaterial.Expandable
  {
    expanded: root.expanded
    header: headerComponent
    delegate: delegateComponent
    animationOnDelegateHeight: true
  } // Expandable
}
