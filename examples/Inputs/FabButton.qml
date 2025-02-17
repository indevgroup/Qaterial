import QtQuick
import Qaterial 1.0 as Qaterial

Row
{
  spacing: 100
  Column
  {
    spacing: 24
    Qaterial.LabelHeadline6
    {
      text: "Mini"
      horizontalAlignment: Text.AlignHCenter
    }
    Qaterial.MiniFabButton
    {
      icon.source: Qaterial.Icons.sync
      highlighted: true
      flat: false
    }
    Qaterial.MiniFabButton
    {
      icon.source: Qaterial.Icons.menu
      flat: false
    }
    Qaterial.MiniFabButton
    {
      icon.source: Qaterial.Icons.calendar
      highlighted: true
    }
    Qaterial.MiniFabButton
    {
      icon.source: Qaterial.Icons.clockOutline
    }
  }
  Column
  {
    spacing: 10
    Qaterial.LabelHeadline6
    {
      text: "Default"
      horizontalAlignment: Text.AlignHCenter
    }
    Qaterial.FabButton
    {
      icon.source: Qaterial.Icons.sync
    }
    Qaterial.FabButton
    {
      icon.source: Qaterial.Icons.menu
      highlighted: false
    }
    Qaterial.FabButton
    {
      icon.source: Qaterial.Icons.calendar
      flat: true
    }
    Qaterial.FabButton
    {
      icon.source: Qaterial.Icons.clockOutline
      flat: true
      highlighted: false
    }
  }
  Column
  {
    spacing: 10
    Qaterial.LabelHeadline6
    {
      text: "Fab To Extended"
      anchors.horizontalCenter: parent.horizontalCenter
    }
    Qaterial.ExtendedFabButton
    {
      anchors.horizontalCenter: parent.horizontalCenter
      icon.source: Qaterial.Icons.sync
      text: "Extended"
      extendedOnHovered: true
    }
    Qaterial.ExtendedFabButton
    {
      anchors.horizontalCenter: parent.horizontalCenter
      icon.source: Qaterial.Icons.menu
      highlighted: false
      text: "Extended"
      extendedOnHovered: true
    }
    Qaterial.ExtendedFabButton
    {
      anchors.horizontalCenter: parent.horizontalCenter
      icon.source: Qaterial.Icons.calendar
      flat: true
      text: "Extended"
      extendedOnHovered: true
    }
    Qaterial.ExtendedFabButton
    {
      anchors.horizontalCenter: parent.horizontalCenter
      icon.source: Qaterial.Icons.clockOutline
      flat: true
      highlighted: false
      text: "Extended"
      extendedOnHovered: true
    }
  }
}
