/**
 * Copyright (C) Olivier Le Doeuff 2019
 * Contact: olivier.ldff@gmail.com
 */

// Qt
import QtQuick
import QtQuick.Templates as T
import QtQuick.Controls

// Qaterial
import Qaterial 1.0 as Qaterial

Qaterial.ModalDialog
{
  id: _control

  property string text

  contentItem: Qaterial.Label
  {
    text: _control.text
    font: _control.font
    color: Qaterial.Style.secondaryTextColor()
    wrapMode: Text.Wrap
  } // Label
} // ModalDialog
