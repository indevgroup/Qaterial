import QtQuick
import Qaterial 1.0 as Qaterial

Column
{
  Qaterial.TextFile
  {
    id: textFile
  }

  TextEdit
  {
    id: _textArea
    width: 400
    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac mauris eget odio interdum volutpat. "
    wrapMode: Text.WordWrap
    selectByMouse: true
    padding: Qaterial.Style.card.horizontalPadding
    selectionColor: Qaterial.Style.accentColor

    color: Qaterial.Style.primaryTextColor()
    font: Qaterial.Style.textTheme.body2
  }

  Row
  {
    anchors.right: parent.right

    Qaterial.FlatButton
    {
      text: "Open"
      icon.source: Qaterial.Icons.folderOutline
      onClicked: () => Qaterial.DialogManager.showOpenFileDialog(
      {
        nameFilters: ["Text files (*.txt)"],
        defaultSuffix: "txt",
        onAccepted: function(path)
        {
          if(!textFile.open(`file:/${path}`, Qaterial.TextFile.Read))
            Qaterial.SnackbarManager.show({ text: `${textFile.error}` })

          _textArea.text = textFile.readAll()

          if(textFile.error)
            Qaterial.SnackbarManager.show({ text: `${textFile.error}` })

          textFile.close()
          Qaterial.SnackbarManager.show({ text: `Success open file ${textFile.fileName}` })
        }
      })
    } // Qaterial.FlatButton

    Qaterial.FlatButton
    {
      text: "Save"
      icon.source: Qaterial.Icons.contentSaveOutline
      onClicked: () => Qaterial.DialogManager.showSaveFileDialog(
      {
        nameFilters: ["Text files (*.txt)"],
        defaultSuffix: "txt",
        onAccepted: function(path)
        {
          if(!textFile.open(`file:/${path}`, Qaterial.TextFile.Write))
            Qaterial.SnackbarManager.show({ text: `${textFile.error}` })

          if(!textFile.write(_textArea.text))
            Qaterial.SnackbarManager.show({ text: `${textFile.error}` })

          textFile.close()
          Qaterial.SnackbarManager.show({ text: `Success save file ${textFile.fileName}` })
        }
      })
    } // Qaterial.FlatButton
  } // Row
} // Column
